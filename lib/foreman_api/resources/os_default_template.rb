module ForemanApi
  module Resources
    class OsDefaultTemplate < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["os_default_templates"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] operatingsystem_id  id of operating system 
      # @option params [String] page  paginate results 
      # @option params [String] per_page  number of entries per request 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def index(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [String] operatingsystem_id  id of operating system 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def show(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] operatingsystem_id  id of operating system 
      # @option params [Hash, nil] os_default_template
      #   allowed keys are:
      #   * config_template_id [String, nil]
      #   * template_kind_id [String, nil]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [String] operatingsystem_id  id of operating system 
      # @option params [Hash, nil] os_default_template
      #   allowed keys are:
      #   * config_template_id [String, nil]
      #   * template_kind_id [String, nil]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def update(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [String] operatingsystem_id  id of operating system 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def destroy(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
