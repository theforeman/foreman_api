module ForemanApi
  module Resources
    class Setting < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["settings"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["search", "order", "page", "per_page"]
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/settings", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["id"]
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/settings/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: {"id"=>nil, "setting"=>["value"]}
      #
      # @param [Hash] headers additional http headers
      def update(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/settings/:id", params
        call(:"put", url, params, headers)
      end

    end
  end
end
