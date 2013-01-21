module ForemanApi
  module Resources
    class CommonParameter < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["common_parameters"]
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
        url, params = fill_params_in_url "/api/common_parameters", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/common_parameters/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Hash] common_parameter 
      #   allowed keys are: 
      #   * name [String],
      #   * value [String],
      #
      # @param [Hash] headers additional http headers
      def create(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/common_parameters", params
        call(:"post", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      # @option params [Hash] common_parameter 
      #   allowed keys are: 
      #   * name [String],
      #   * value [String],
      #
      # @param [Hash] headers additional http headers
      def update(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/common_parameters/:id", params
        call(:"put", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
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
