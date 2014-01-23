module ForemanApi
  module Resources
    class Interface < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["interfaces"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] host_id  id or name of host 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def index(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id  id or name of interface 
      # @option params [String] host_id  id or name of nested host 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def show(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] host_id  id or name of host 
      # @option params [Hash, nil] interface  interface information 
      #   allowed keys are:
      #   * domain_id [Numeric, nil]  foreman domain id of interface 
      #   * subnet_id [Numeric, nil]  foreman subnet id of interface 
      #   * ip [String]  ip address of interface 
      #   * mac [String]  mac address of interface 
      #   * name [String]  interface name 
      #   * password [String, nil]
      #   * provider [String, nil]  interface provider, i.e: ipmi 
      #   * type [String]  interface type, i.e: nic::bmc 
      #   * username [String, nil]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [String] host_id  id or name of host 
      # @option params [Hash, nil] interface  interface information 
      #   allowed keys are:
      #   * domain_id [Numeric, nil]  foreman domain id of interface 
      #   * subnet_id [Numeric, nil]  foreman subnet id of interface 
      #   * ip [String]  ip address of interface 
      #   * mac [String]  mac address of interface 
      #   * name [String]  interface name 
      #   * password [String, nil]
      #   * provider [String, nil]  interface provider, i.e: ipmi 
      #   * type [String]  interface type, i.e: nic::bmc 
      #   * username [String, nil]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def update(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id  id of interface 
      # @option params [Object] host_id Part of +/api/hosts/:host_id/interfaces/:id+ path
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def destroy(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
