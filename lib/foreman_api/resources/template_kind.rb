module ForemanApi
  module Resources
    class TemplateKind < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["template_kinds"]
      end
      
      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] page Paginate results
      # @option params [String] per_page Number of entries per request
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
