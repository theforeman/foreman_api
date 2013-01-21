module ForemanApi
  module Resources
    class Dashboard < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["dashboard"]
      end
      
      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] search Filter results 
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/dashboard", params
        call(:"get", url, params, headers)
      end

    end
  end
end
