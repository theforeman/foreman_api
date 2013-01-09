module ForemanApi
  module Resources
    class TemplateKind < Apipie::Client::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["template_kinds"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["page", "per_page"]
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/template_kinds", params
        call(:"get", url, params, headers)
      end

    end
  end
end
