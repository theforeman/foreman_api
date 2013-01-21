module ForemanApi
  module Resources
    class Host < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["hosts"]
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
        url, params = fill_params_in_url "/api/hosts", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/hosts/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Hash] host 
      #   allowed keys are: 
      #   * architecture_id [String],
      #   * domain_id [String],
      #   * environment_id [String],
      #   * host_parameters_attributes [String],
      #   * hostgroup_id [String],
      #   * image_id [String],
      #   * ip [String] Not required if using a subnet with dhcp proxy ,
      #   * mac [String] Not required if its a virtual machine ,
      #   * medium_id [String],
      #   * model_id_id [String],
      #   * name [String],
      #   * operatingsystem_id [String],
      #   * owner_id [String],
      #   * ptable_id [String],
      #   * puppet_ca_proxy_id [String],
      #   * puppet_proxy_id [String],
      #   * sp_subnet_id [String],
      #   * subnet_id [String],
      #
      # @param [Hash] headers additional http headers
      def create(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/hosts", params
        call(:"post", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      # @option params [Hash] host 
      #   allowed keys are: 
      #   * architecture_id [String],
      #   * domain_id [String],
      #   * environment_id [String],
      #   * host_parameters_attributes [String],
      #   * hostgroup_id [String],
      #   * image_id [String],
      #   * ip [String] Not required if using a subnet with dhcp proxy ,
      #   * mac [String] Not required if its a virtual machine ,
      #   * medium_id [String],
      #   * model_id_id [String],
      #   * name [String],
      #   * operatingsystem_id [String],
      #   * owner_id [String],
      #   * ptable_id [String],
      #   * puppet_ca_proxy_id [String],
      #   * puppet_proxy_id [String],
      #   * sp_subnet_id [String],
      #   * subnet_id [String],
      #
      # @param [Hash] headers additional http headers
      def update(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/hosts/:id", params
        call(:"put", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def destroy(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/hosts/:id", params
        call(:"delete", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def status(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/hosts/:id/status", params
        call(:"get", url, params, headers)
      end

    end
  end
end
