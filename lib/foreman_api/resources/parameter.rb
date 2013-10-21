module ForemanApi
  module Resources
    class Parameter < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["parameters"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] domain_id  id of domain 
      # @option params [String] host_id  id of host 
      # @option params [String] hostgroup_id  id of hostgroup 
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
      # @option params [String] id  id of parameter 
      # @option params [String] domain_id  id of domain 
      # @option params [String] host_id  id of host 
      # @option params [String] hostgroup_id  id of hostgroup 
      # @option params [String] operatingsystem_id  id of operating system 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def show(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] domain_id  id of domain 
      # @option params [String] host_id  id of host 
      # @option params [String] hostgroup_id  id of hostgroup 
      # @option params [String] operatingsystem_id  id of operating system 
      # @option params [Hash] parameter
      #   allowed keys are:
      #   * name [String]
      #   * value [String]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id  id of parameter 
      # @option params [String] domain_id  id of domain 
      # @option params [String] host_id  id of host 
      # @option params [String] hostgroup_id  id of hostgroup 
      # @option params [String] operatingsystem_id  id of operating system 
      # @option params [Hash] parameter
      #   allowed keys are:
      #   * name [String]
      #   * value [String]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def update(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id  id of parameter 
      # @option params [String] domain_id  id of domain 
      # @option params [String] host_id  id of host 
      # @option params [String] hostgroup_id  id of hostgroup 
      # @option params [String] operatingsystem_id  id of operating system 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def destroy(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Object] domain_id Part of +/api/domains/:domain_id/parameters+ path
      # @option params [Object] host_id Part of +/api/hosts/:host_id/parameters+ path
      # @option params [Object] hostgroup_id Part of +/api/hostgroups/:hostgroup_id/parameters+ path
      # @option params [Object] operatingsystem_id Part of +/api/operatingsystems/:operatingsystem_id/parameters+ path
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def reset(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
