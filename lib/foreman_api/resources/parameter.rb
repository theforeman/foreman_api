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
      # @option params [String] location_id  id of location 
      # @option params [String] operatingsystem_id  id of operating system 
      # @option params [String] organization_id  id of organization 
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
      # @option params [String] location_id  id of location 
      # @option params [String] operatingsystem_id  id of operating system 
      # @option params [String] organization_id  id of organization 
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
      # @option params [String] location_id  id of location 
      # @option params [String] operatingsystem_id  id of operating system 
      # @option params [String] organization_id  id of organization 
      # @option params [Hash, nil] parameter
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
      # @option params [String] location_id  id of location 
      # @option params [String] operatingsystem_id  id of operating system 
      # @option params [String] organization_id  id of organization 
      # @option params [Hash, nil] parameter
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
      # @option params [String] location_id  id of location 
      # @option params [String] operatingsystem_id  id of operating system 
      # @option params [String] organization_id  id of organization 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def destroy(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] domain_id  id of domain 
      # @option params [String] host_id  id of host 
      # @option params [String] hostgroup_id  id of hostgroup 
      # @option params [String] location_id  id of location 
      # @option params [String] operatingsystem_id  id of operating system 
      # @option params [String] organization_id  id of organization 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def reset(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
