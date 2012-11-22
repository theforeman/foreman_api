module ForemanApi
  module Resources
    class CommonParameter < Apipie::Client::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["common_parameters"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["search", "order", "page", "per_page"]
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/common_parameters", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["id"]
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/common_parameters/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: {"common_parameter"=>["name", "value"]}
      #
      # @param [Hash] headers additional http headers
      def create(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/common_parameters", params
        call(:"post", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: {"common_parameter"=>["name", "value"], "id"=>nil}
      #
      # @param [Hash] headers additional http headers
      def update(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/common_parameters/:id", params
        call(:"put", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["id"]
      #
      # @param [Hash] headers additional http headers
      def destroy(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/common_parameters/:id", params
        call(:"delete", url, params, headers)
      end

    end
  end
end
