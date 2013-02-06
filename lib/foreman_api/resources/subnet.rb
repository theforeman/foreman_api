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
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/subnets", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/subnets/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Hash] subnet 
      #   allowed keys are: 
      #   * dhcp_id [String] Dhcp proxy to use within this subnet,
      #   * dns_id [String] Dns proxy to use within this subnet,
      #   * dns_primary [String] Primary dns for this subnet,
      #   * dns_secondary [String] Secondary dns for this subnet,
      #   * domain_ids [String] Domains in which this subnet is part,
      #   * from [String] Starting ip address for ip auto suggestion,
      #   * gateway [String] Primary dns for this subnet,
      #   * mask [String] Netmask for this subnet,
      #   * name [String] Subnet name,
      #   * network [String] Subnet network,
      #   * tftp_id [String] Tftp proxy to use within this subnet,
      #   * to [String] Ending ip address for ip auto suggestion,
      #   * vlanid [String] Vlan id for this subnet,
      #
      # @param [Hash] headers additional http headers
      def create(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/subnets", params
        call(:"post", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id Subnet numeric identifier
      # @option params [Hash] subnet 
      #   allowed keys are: 
      #   * dhcp_id [String, nil] Dhcp proxy to use within this subnet,
      #   * dns_id [String, nil] Dns proxy to use within this subnet,
      #   * dns_primary [String, nil] Primary dns for this subnet,
      #   * dns_secondary [String, nil] Secondary dns for this subnet,
      #   * domain_ids [String, nil] Domains in which this subnet is part,
      #   * from [String, nil] Starting ip address for ip auto suggestion,
      #   * gateway [String, nil] Primary dns for this subnet,
      #   * mask [String] Netmask for this subnet,
      #   * name [String] Subnet name,
      #   * network [String] Subnet network,
      #   * tftp_id [String, nil] Tftp proxy to use within this subnet,
      #   * to [String, nil] Ending ip address for ip auto suggestion,
      #   * vlanid [String, nil] Vlan id for this subnet,
      #
      # @param [Hash] headers additional http headers
      def update(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/subnets/:id", params
        call(:"put", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id Subnet numeric identifier
      #
      # @param [Hash] headers additional http headers
      def destroy(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/subnets/:id", params
        call(:"delete", url, params, headers)
      end

    end
  end
end
