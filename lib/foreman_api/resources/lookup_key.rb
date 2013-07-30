module ForemanApi
  module Resources
    class LookupKey < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["lookup_keys"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] order Sort results
      # @option params [String] page Paginate results
      # @option params [String] per_page Number of entries per request
      # @option params [String] search Filter results
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def index(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def show(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Hash] lookup_key
      #   allowed keys are:
      #   * puppetclass_id [String]
      #   * default_value [String]
      #   * description [String]
      #   * is_param [String]
      #   * key [String]
      #   * key_type [String]
      #   * override [String]
      #   * path [String]
      #   * required [String]
      #   * validator_rule [String]
      #   * validator_type [String]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [Hash] lookup_key
      #   allowed keys are:
      #   * puppetclass_id [String]
      #   * default_value [String]
      #   * description [String]
      #   * is_param [String]
      #   * key [String]
      #   * key_type [String]
      #   * override [String]
      #   * path [String]
      #   * required [String]
      #   * validator_rule [String]
      #   * validator_type [String]
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

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] host_id
      # @option params [String] hostgroup_id
      # @option params [String] page Paginate results
      # @option params [String] per_page Number of entries per request
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def host_or_hostgroup_smart_parameters(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] host_id
      # @option params [String] hostgroup_id
      # @option params [String] page Paginate results
      # @option params [String] per_page Number of entries per request
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def host_or_hostgroup_smart_class_parameters(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] puppetclass_id
      # @option params [String] order Sort results
      # @option params [String] page Paginate results
      # @option params [String] per_page Number of entries per request
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def puppet_smart_parameters(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] environment_id
      # @option params [String] puppetclass_id
      # @option params [String] order Sort results
      # @option params [String] page Paginate results
      # @option params [String] per_page Number of entries per request
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def puppet_smart_class_parameters(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
