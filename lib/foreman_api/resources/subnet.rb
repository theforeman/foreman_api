module ForemanApi
  module Resources
    class Subnet < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["subnets"]
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
      # @option params [Hash] subnet
      #   allowed keys are:
      #   * dhcp_id [String] Dhcp proxy to use within this subnet
      #   * dns_id [String] Dns proxy to use within this subnet
      #   * domain_ids [String] Domains in which this subnet is part
      #   * tftp_id [String] Tftp proxy to use within this subnet
      #   * dns_primary [String] Primary dns for this subnet
      #   * dns_secondary [String] Secondary dns for this subnet
      #   * from [String] Starting ip address for ip auto suggestion
      #   * gateway [String] Primary dns for this subnet
      #   * mask [String] Netmask for this subnet
      #   * name [String] Subnet name
      #   * network [String] Subnet network
      #   * to [String] Ending ip address for ip auto suggestion
      #   * vlanid [String] Vlan id for this subnet
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id Subnet numeric identifier
      # @option params [Hash] subnet
      #   allowed keys are:
      #   * dhcp_id [String, nil] Dhcp proxy to use within this subnet
      #   * dns_id [String, nil] Dns proxy to use within this subnet
      #   * domain_ids [String, nil] Domains in which this subnet is part
      #   * tftp_id [String, nil] Tftp proxy to use within this subnet
      #   * dns_primary [String, nil] Primary dns for this subnet
      #   * dns_secondary [String, nil] Secondary dns for this subnet
      #   * from [String, nil] Starting ip address for ip auto suggestion
      #   * gateway [String, nil] Primary dns for this subnet
      #   * mask [String] Netmask for this subnet
      #   * name [String] Subnet name
      #   * network [String] Subnet network
      #   * to [String, nil] Ending ip address for ip auto suggestion
      #   * vlanid [String, nil] Vlan id for this subnet
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def update(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id Subnet numeric identifier
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def destroy(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
