module ForemanApi
  module Resources
    class Subnet < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["subnets"]
      end

      # @param [Hash] params a hash of params to be passed to the service
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
      #   * dhcp_id [String]  dhcp proxy to use within this subnet 
      #   * dns_id [String]  dns proxy to use within this subnet 
      #   * domain_ids [Array]  domains in which this subnet is part 
      #   * tftp_id [String]  tftp proxy to use within this subnet 
      #   * dns_primary [String]  primary dns for this subnet 
      #   * dns_secondary [String]  secondary dns for this subnet 
      #   * from [String]  starting ip address for ip auto suggestion 
      #   * gateway [String]  primary dns for this subnet 
      #   * mask [String]  netmask for this subnet 
      #   * name [String]  subnet name 
      #   * network [String]  subnet network 
      #   * to [String]  ending ip address for ip auto suggestion 
      #   * vlanid [String]  vlan id for this subnet 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id  subnet numeric identifier 
      # @option params [Hash] subnet
      #   allowed keys are:
      #   * dhcp_id [String, nil]  dhcp proxy to use within this subnet 
      #   * dns_id [String, nil]  dns proxy to use within this subnet 
      #   * domain_ids [Array, nil]  domains in which this subnet is part 
      #   * tftp_id [String, nil]  tftp proxy to use within this subnet 
      #   * dns_primary [String, nil]  primary dns for this subnet 
      #   * dns_secondary [String, nil]  secondary dns for this subnet 
      #   * from [String, nil]  starting ip address for ip auto suggestion 
      #   * gateway [String, nil]  primary dns for this subnet 
      #   * mask [String]  netmask for this subnet 
      #   * name [String]  subnet name 
      #   * network [String]  subnet network 
      #   * to [String, nil]  ending ip address for ip auto suggestion 
      #   * vlanid [String, nil]  vlan id for this subnet 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def update(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id  subnet numeric identifier 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def destroy(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
