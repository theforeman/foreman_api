module ForemanApi
  module Resources
    class Audit < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["audits"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Object] host_id Part of +/api/hosts/:host_id/audits+ path
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

    end
  end
end
