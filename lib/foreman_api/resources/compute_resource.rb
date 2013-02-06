module ForemanApi
  module Resources
    class ComputeResource < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["compute_resources"]
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
        url, params = fill_params_in_url "/api/compute_resources", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/compute_resources/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Hash] compute_resource 
      #   allowed keys are: 
      #   * description [String],
      #   * name [String],
      #   * password [String] Password for ovirt, ec2, vmware, openstack. secret key for ec2,
      #   * provider [String] Providers include libvirt, ovirt, ec2, vmware, openstack, rackspace,
      #   * region [String] For ec2 only,
      #   * server [String] For vmware,
      #   * tenant [String] For openstack only,
      #   * url [String] Url for libvirt, ovirt, and openstack,
      #   * user [String] Username for ovirt, ec2, vmware, openstack. access key for ec2.,
      #   * uuid [String] For ovirt, vmware datacenter,
      #
      # @param [Hash] headers additional http headers
      def create(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/compute_resources", params
        call(:"post", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      # @option params [Hash] compute_resource 
      #   allowed keys are: 
      #   * description [String],
      #   * name [String],
      #   * password [String] Password for ovirt, ec2, vmware, openstack. secret key for ec2,
      #   * provider [String] Providers include libvirt, ovirt, ec2, vmware, openstack, rackspace,
      #   * region [String] For ec2 only,
      #   * server [String] For vmware,
      #   * tenant [String] For openstack only,
      #   * url [String] Url for libvirt, ovirt, and openstack,
      #   * user [String] Username for ovirt, ec2, vmware, openstack. access key for ec2.,
      #   * uuid [String] For ovirt, vmware datacenter,
      #
      # @param [Hash] headers additional http headers
      def update(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/compute_resources/:id", params
        call(:"put", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def destroy(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/compute_resources/:id", params
        call(:"delete", url, params, headers)
      end

    end
  end
end
