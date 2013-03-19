module ForemanApi
  module Resources
    class Model < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["models"]
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
      # @option params [Hash] model
      #   allowed keys are:
      #   * hardware_model [String]
      #   * info [String]
      #   * name [String]
      #   * vendor_class [String]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [Hash] model
      #   allowed keys are:
      #   * hardware_model [String]
      #   * info [String]
      #   * name [String]
      #   * vendor_class [String]
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
