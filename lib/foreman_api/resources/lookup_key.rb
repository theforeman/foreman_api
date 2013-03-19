module ForemanApi
  module Resources
    class LookupKey < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["lookup_keys"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Object] host_id Part of +/api/hosts/:host_id/lookup_keys+ path
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
      #   * key [String]
      #   * lookup_values_count [String]
      #   * path [String]
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
      #   * key [String]
      #   * lookup_values_count [String]
      #   * path [String]
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
