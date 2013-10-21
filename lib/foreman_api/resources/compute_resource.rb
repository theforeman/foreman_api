module ForemanApi
  module Resources
    class ComputeResource < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["compute_resources"]
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
      # @option params [Hash] compute_resource
      #   allowed keys are:
      #   * description [String]
      #   * name [String]
      #   * password [String]  password for ovirt, ec2, vmware, openstack. secret key for ec2 
      #   * provider [String]  providers include libvirt, ovirt, ec2, vmware, openstack, rackspace, gce 
      #   * region [String]  for ec2 only 
      #   * server [String]  for vmware 
      #   * tenant [String]  for openstack only 
      #   * url [String]  url for libvirt, ovirt, and openstack 
      #   * user [String]  username for ovirt, ec2, vmware, openstack. access key for ec2. 
      #   * uuid [String]  for ovirt, vmware datacenter 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [Hash] compute_resource
      #   allowed keys are:
      #   * description [String]
      #   * name [String]
      #   * password [String]  password for ovirt, ec2, vmware, openstack. secret key for ec2 
      #   * provider [String]  providers include libvirt, ovirt, ec2, vmware, openstack, rackspace, gce 
      #   * region [String]  for ec2 only 
      #   * server [String]  for vmware 
      #   * tenant [String]  for openstack only 
      #   * url [String]  url for libvirt, ovirt, and openstack 
      #   * user [String]  username for ovirt, ec2, vmware, openstack. access key for ec2. 
      #   * uuid [String]  for ovirt, vmware datacenter 
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

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def available_images(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
