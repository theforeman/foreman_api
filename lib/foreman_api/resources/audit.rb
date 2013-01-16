module ForemanApi
  module Resources
    class Audit < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["audits"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["search", "order", "page", "per_page"]
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/audits", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["id"]
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/audits/:id", params
        call(:"get", url, params, headers)
      end

    end
  end
end
