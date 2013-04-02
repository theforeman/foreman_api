module ForemanApi
  module Resources
    class Parameter < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["parameters"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] domain_id Id of domain
      # @option params [String] host_id Id of host
      # @option params [String] hostgroup_id Id of hostgroup
      # @option params [String] operatingsystem_id Id of operating system
      # @option params [String] page Paginate results
      # @option params [String] per_page Number of entries per request
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def index(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id Id of parameter
      # @option params [String] domain_id Id of domain
      # @option params [String] host_id Id of host
      # @option params [String] hostgroup_id Id of hostgroup
      # @option params [String] operatingsystem_id Id of operating system
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def show(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id Id of parameter
      # @option params [String] domain_id Id of domain
      # @option params [String] host_id Id of host
      # @option params [String] hostgroup_id Id of hostgroup
      # @option params [String] operatingsystem_id Id of operating system
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
      # @option params [String] id Id of parameter
      # @option params [String] domain_id Id of domain
      # @option params [String] host_id Id of host
      # @option params [String] hostgroup_id Id of hostgroup
      # @option params [String] operatingsystem_id Id of operating system
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
      # @option params [String] id Id of parameter
      # @option params [String] domain_id Id of domain
      # @option params [String] host_id Id of host
      # @option params [String] hostgroup_id Id of hostgroup
      # @option params [String] operatingsystem_id Id of operating system
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def destroy(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Object] domain_id Part of +/api/domain/:domain_id/parameters+ path
      # @option params [Object] host_id Part of +/api/host/:host_id/parameters+ path
      # @option params [Object] hostgroup_id Part of +/api/hostgroup/:hostgroup_id/parameters+ path
      # @option params [Object] operatingsystem_id Part of +/api/operatingsystem/:operatingsystem_id/parameters+ path
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def reset(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
