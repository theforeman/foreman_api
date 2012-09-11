module ForemanApi
  module Resources
    class Subnet < ForemanApi::Base

      def index(params = {}, headers = {})
        validate_params!(params, ["search", "order"])
        call(:get, "/api/subnets", :params => params, :headers => headers)
      end

      def create(params = {}, headers = {})
        validate_params!(params, {"subnet"=>["name", "network", "mask", "gateway", "dns_primary", "dns_secondary", "from", "to", "vlanid", "domain_ids", "dhcp_id", "tftp_id", "dns_id"]})
        call(:post, "/api/subnets", :payload => params, :headers => headers)
      end

      def update(id, params = {}, headers = {})
        validate_params!(params, {"subnet"=>["name", "network", "mask", "gateway", "dns_primary", "dns_secondary", "from", "to", "vlanid", "domain_ids", "dhcp_id", "tftp_id", "dns_id"], "id"=>nil})
        call(:put, "/api/subnets/#{id}", :payload => params, :headers => headers)
      end

      def destroy(id, params = {}, headers = {})
        validate_params!(params, ["id"])
        call(:delete, "/api/subnets/#{id}", :payload => params, :headers => headers)
      end

      def freeip(params = {}, headers = {})
        validate_params!(params, ["subnet_id", "host_mac"])
        call(:post, "/api/subnets/freeip", :payload => params, :headers => headers)
      end

    end
  end
end
