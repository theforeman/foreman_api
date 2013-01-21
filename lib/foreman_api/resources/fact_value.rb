module ForemanApi
  module Resources
    class FactValue < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["fact_values"]
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
        url, params = fill_params_in_url "/api/fact_values", params
        call(:"get", url, params, headers)
      end

    end
  end
end
