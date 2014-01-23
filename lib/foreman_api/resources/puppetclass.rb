module ForemanApi
  module Resources
    class Puppetclass < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["puppetclasses"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] environment_id  id of nested environment 
      # @option params [String] host_id  id of nested host 
      # @option params [String] hostgroup_id  id of nested hostgroup 
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
      # @option params [String] id  id of puppetclass 
      # @option params [String] environment_id  id of nested environment 
      # @option params [String] host_id  id of nested host 
      # @option params [String] hostgroup_id  id of nested hostgroup 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def show(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Hash, nil] puppetclass
      #   allowed keys are:
      #   * name [String]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [Hash, nil] puppetclass
      #   allowed keys are:
      #   * name [String]
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
