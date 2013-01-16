module ForemanApi
  module Resources
    class Image < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["images"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["search", "order", "page", "per_page", "compute_resource_id"]
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/compute_resources/:compute_resource_id/images", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["id", "compute_resource_id"]
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/compute_resources/:compute_resource_id/images/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: {"compute_resource_id"=>nil, "image"=>["name", "username", "uuid", "compute_resource_id", "architecture_id", "operatingsystem_id"]}
      #
      # @param [Hash] headers additional http headers
      def create(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/compute_resources/:compute_resource_id/images", params
        call(:"post", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: {"compute_resource_id"=>nil, "id"=>nil, "image"=>["name", "username", "uuid", "compute_resource_id", "architecture_id", "operatingsystem_id"]}
      #
      # @param [Hash] headers additional http headers
      def update(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/compute_resources/:compute_resource_id/images/:id", params
        call(:"put", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["compute_resource_id", "id"]
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
