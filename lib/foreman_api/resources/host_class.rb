module ForemanApi
  module Resources
    class HostClass < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["host_classes"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Object] host_id Part of +/api/hosts/:host_id/puppetclass_ids+ path
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def index(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] host_id  id of host 
      # @option params [String] puppetclass_id  id of puppetclass 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id  id of puppetclass 
      # @option params [String] host_id  id of host 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def destroy(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
