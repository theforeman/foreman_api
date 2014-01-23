module ForemanApi
  module Resources
    class HostgroupClass < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["hostgroup_classes"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Object] hostgroup_id Part of +/api/hostgroups/:hostgroup_id/puppetclass_ids+ path
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def index(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] hostgroup_id  id of hostgroup 
      # @option params [String] puppetclass_id  id of puppetclass 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id  id of puppetclass 
      # @option params [String] hostgroup_id  id of hostgroup 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def destroy(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
