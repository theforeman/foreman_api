module ForemanApi
  module Resources
    class Host < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["hosts"]
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
      # @option params [Hash] host
      #   allowed keys are:
      #   * architecture_id [String]
      #   * compute_resource_id [String]
      #   * domain_id [String]
      #   * environment_id [String]
      #   * hostgroup_id [String]
      #   * image_id [String]
      #   * medium_id [String]
      #   * model_id [String]
      #   * operatingsystem_id [String]
      #   * owner_id [String]
      #   * ptable_id [String]
      #   * puppet_ca_proxy_id [String]
      #   * puppet_class_ids [Array]
      #   * puppet_proxy_id [String]
      #   * sp_subnet_id [String]
      #   * subnet_id [String]
      #   * build [String]
      #   * capabilities [String]
      #   * compute_attributes [Hash]
      #   * enabled [String]
      #   * host_parameters_attributes [Array]
      #   * ip [String]  not required if using a subnet with dhcp proxy 
      #   * mac [String]  not required if its a virtual machine 
      #   * managed [String]
      #   * name [String]
      #   * provision_method [String]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [Hash] host
      #   allowed keys are:
      #   * architecture_id [String]
      #   * compute_resource_id [String]
      #   * domain_id [String]
      #   * environment_id [String]
      #   * hostgroup_id [String]
      #   * image_id [String]
      #   * medium_id [String]
      #   * model_id [String]
      #   * operatingsystem_id [String]
      #   * owner_id [String]
      #   * ptable_id [String]
      #   * puppet_ca_proxy_id [String]
      #   * puppet_class_ids [Array]
      #   * puppet_proxy_id [String]
      #   * sp_subnet_id [String]
      #   * subnet_id [String]
      #   * build [String]
      #   * capabilities [String]
      #   * compute_attributes [Hash]
      #   * enabled [String]
      #   * host_parameters_attributes [Array]
      #   * ip [String]  not required if using a subnet with dhcp proxy 
      #   * mac [String]  not required if its a virtual machine 
      #   * managed [String]
      #   * name [String]
      #   * provision_method [String]
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
      def status(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Object] id Part of +/api/hosts/:id/puppetrun+ path
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def puppetrun(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [String] power_action  power action, valid actions are (‘on’, ‘start’)’, (‘off’, ‘stop’), (‘soft’, ‘reboot’), (‘cycle’, ‘reset’), (‘state’, ‘status’) 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def power(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [String] device  boot device, valid devices are disk, cdrom, pxe, bios 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def boot(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] certname  optional: certname of the host 
      # @option params [Hash] facts  hash containing the facts for the host 
      # @option params [String] name  hostname of the host 
      # @option params [String] type  optional: the sti type of host to create 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def facts(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
