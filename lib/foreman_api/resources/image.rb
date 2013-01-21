module ForemanApi
  module Resources
    class Image < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["images"]
      end
      
      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] compute_resource_id 
      # @option params [String] order Sort results 
      # @option params [String] page Paginate results 
      # @option params [String] per_page Number of entries per request 
      # @option params [String] search Filter results 
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/compute_resources/:compute_resource_id/images", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      # @option params [String] compute_resource_id 
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/compute_resources/:compute_resource_id/images/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] compute_resource_id 
      # @option params [Hash] image 
      #   allowed keys are: 
      #   * architecture_id [String],
      #   * compute_resource_id [String],
      #   * name [String],
      #   * operatingsystem_id [String],
      #   * username [String],
      #   * uuid [String],
      #
      # @param [Hash] headers additional http headers
      def create(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/compute_resources/:compute_resource_id/images", params
        call(:"post", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      # @option params [String] compute_resource_id 
      # @option params [Hash] image 
      #   allowed keys are: 
      #   * architecture_id [String],
      #   * compute_resource_id [String],
      #   * name [String],
      #   * operatingsystem_id [String],
      #   * username [String],
      #   * uuid [String],
      #
      # @param [Hash] headers additional http headers
      def update(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/compute_resources/:compute_resource_id/images/:id", params
        call(:"put", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      # @option params [String] compute_resource_id 
      #
      # @param [Hash] headers additional http headers
      def destroy(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/compute_resources/:compute_resource_id/images/:id", params
        call(:"delete", url, params, headers)
      end

    end
  end
end
