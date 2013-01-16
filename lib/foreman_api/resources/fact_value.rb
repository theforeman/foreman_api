module ForemanApi
  module Resources
    class FactValue < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["fact_values"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["search", "order", "page", "per_page"]
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/fact_values", params
        call(:"get", url, params, headers)
      end

    end
  end
end
