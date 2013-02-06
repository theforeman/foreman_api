module ForemanApi
  module Resources
    class TemplateCombination < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["template_combinations"]
      end
      
      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] config_template_id 
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/config_templates/:config_template_id/template_combinations", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] config_template_id 
      # @option params [Hash] template_combination 
      #   allowed keys are: 
      #   * environment_id [String, nil] Environment id,
      #   * hostgroup_id [String, nil] Hostgroup id,
      #
      # @param [Hash] headers additional http headers
      def create(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/config_templates/:config_template_id/template_combinations", params
        call(:"post", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/template_combinations/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def destroy(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/template_combinations/:id", params
        call(:"delete", url, params, headers)
      end

    end
  end
end
