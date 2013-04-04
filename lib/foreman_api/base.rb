require 'rest_client'
require 'oauth'
require 'json'
require 'foreman_api/rest_client_oauth'
require 'logger'

module ForemanApi

  def self.client_config
    @client_config ||= YAML.load_file("#{root}/foreman_api/config.yml")
  end

  def self.root
    @root ||= File.expand_path('../', File.dirname(__FILE__))
  end

  def self.doc_file
    "#{root}/foreman_api/documentation.json"
  end

  def self.doc
    @doc ||= File.open(doc_file, 'r') do |f|
      JSON.load(f.read)['docs']
    end
  end

  class Base
    API_VERSION = "2"

    attr_reader :client, :config, :logger

    def initialize(config, options = {})
      config = config.dup
      self.logger = config.delete(:logger)
      @client = RestClient::Resource.new(
          config[:base_url],
          { :user     => config[:username],
            :password => config[:password],
            :oauth    => config[:oauth],
            :headers  => { :content_type => 'application/json',
                           :accept       => "application/json;version=#{API_VERSION}" }
          }.merge(options))
      @config = config
    end

    def perform_call(method_name, params, headers)
      method_doc = self.class.method_doc(method_name)
      check_params params, :allowed => method_doc['params'].any?, :method => method_name
      method_apis = method_doc['apis']
      api = find_suitable_api_call(method_apis, params)
      url, params = fill_params_in_url api['api_url'], params
      return http_call(api['http_method'].downcase, url, params, headers)
    end

    def http_call(http_method, path, params = { }, headers = { })
      headers ||= { }

      args = [http_method]
      if %w[post put].include?(http_method.to_s)
        args << params.to_json
      else
        headers[:params] = params if params
      end

      logger.info "#{http_method.upcase} #{path}"
      logger.debug "Params: #{params.inspect}"
      logger.debug "Headers: #{headers.inspect}"
      args << headers if headers
      process_data client[path].send(*args)
    end

    def self.doc
      raise NotImplementedError
    end

    def self.validation_hash(method)
      validation_hashes[method.to_s]
    end

    def self.method_doc(method)
      method_docs[method.to_s]
    end

    def validate_params!(params, rules)
      return unless params.is_a?(Hash)

      invalid_keys = params.keys.map(&:to_s) - (rules.is_a?(Hash) ? rules.keys : rules)
      raise ArgumentError, "Invalid keys: #{invalid_keys.join(", ")}" unless invalid_keys.empty?

      if rules.is_a? Hash
        rules.each do |key, sub_keys|
          validate_params!(params[key], sub_keys) if params[key]
        end
      end
    end

    def logger=(logger)
      if logger.nil?
        logger = Logger.new(STDOUT)
        logger.level = Logger::WARN
      end
      @logger = logger
    end

    protected

    def process_data(response)
      data = begin
               JSON.parse(response.body)
             rescue JSON::ParserError
               response.body
             end
      logger.debug "Returned data: #{data.inspect}"
      return data, response
    end

    def check_params(params, options = { })
      raise ArgumentError unless (method = options[:method])
      return unless config[:enable_validations]

      case options[:allowed]
      when true
        validate_params!(params, self.class.validation_hash(method))
      when false
        raise ArgumentError, "this method '#{method}' does not support params" if params && !params.empty?
      else
        raise ArgumentError, "options :allowed should be true or false, it was #{options[:allowed]}"
      end
    end

    # @param possible_apis [Array] Array of hasahs in form of
    #   [{:api_url => '/path1', :http_method => 'GET'}, {...}]
    # @param params [Hash] enterred params
    # @return api that suits the enterred params mosts
    #
    # Given this paths:
    #   1. +/comments+
    #   2. +/users/:user_id/comments+
    #   3. +/users/:user_id/posts/:post_id/comments+
    #
    # If +:user_id+ and +:post_id+ is pecified, the third path is
    # used. If only +:user_id+ is specified, the second one is used.
    # The selection defaults to the path with the least number of
    # incuded params in alphanumeric order.
    def find_suitable_api_call(possible_apis, params)
      apis_with_params = possible_apis.map do |api|
        [api, self.class.params_in_path(api['api_url'])]
      end.sort_by { |api, url_params| [-1 * url_params.count, api['api_url']] }

      suitable_api = apis_with_params.find do |api, url_params|
        url_params.all? { |url_param| params.keys.map(&:to_s).include?(url_param) }
      end

      suitable_api ||= apis_with_params.last
      return suitable_api.first
    end

    # @return url and rest of the params
    def fill_params_in_url(url, params)
      params          ||= { }
      # insert param values
      url_param_names = self.class.params_in_path(url)
      url             = url_param_names.inject(url) do |url, param_name|
        param_value = params[param_name] or
          raise ArgumentError, "missing param '#{param_name}' in parameters"
        url.sub(":#{param_name}", param_value.to_s)
      end

      return url, params.reject { |param_name, _| url_param_names.include? param_name }
    end

    private

    def self.method_docs
      @method_docs ||= doc['methods'].inject({ }) do |hash, method|
        hash[method['name']] = method
        hash
      end
    end

    def self.validation_hashes
      @validation_hashes ||= method_docs.inject({ }) do |hash, pair|
        name, method_doc = pair
        hash[name]       = construct_validation_hash method_doc
        hash
      end
    end

    def self.construct_validation_hash(method)
      if method['params'].any? { |p| p['params'] }
        method['params'].reduce({ }) do |h, p|
          h.update(p['name'] => (p['params'] ? p['params'].map { |pp| pp['name'] } : nil))
        end
      else
        method['params'].map { |p| p['name'] }
      end
    end

    def self.params_in_path(url)
      url.scan(/:([^\/]*)/).map { |m| m.first }
    end
  end
end
