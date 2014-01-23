module ForemanApi
  module Resources
    class Domain < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["domains"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] order  sort results 
      # @option params [String] page  paginate results 
      # @option params [String] per_page  number of entries per request 
      # @option params [String] search  filter results 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def index(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id  may be numerical id or domain name 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def show(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Hash, nil] domain
      #   allowed keys are:
      #   * dns_id [String, nil]  dns proxy to use within this domain 
      #   * domain_parameters_attributes [Array, nil]  array of parameters (name, value) 
      #   * fullname [String, nil]  full name describing the domain 
      #   * name [String]  the full dns domain name 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [Hash, nil] domain
      #   allowed keys are:
      #   * dns_id [String, nil]  dns proxy to use within this domain 
      #   * domain_parameters_attributes [Array, nil]  array of parameters (name, value) 
      #   * fullname [String, nil]  full name describing the domain 
      #   * name [String]  the full dns domain name 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def update(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def destroy(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
