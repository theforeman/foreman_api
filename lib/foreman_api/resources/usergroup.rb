module ForemanApi
  module Resources
    class Usergroup < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["usergroups"]
      end
      
      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] page Paginate results 
      # @option params [String] per_page Number of entries per request 
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/usergroups", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/usergroups/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Hash] usergroup 
      #   allowed keys are: 
      #   * name [String],
      #
      # @param [Hash] headers additional http headers
      def create(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/usergroups", params
        call(:"post", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      # @option params [Hash] usergroup 
      #   allowed keys are: 
      #   * name [String],
      #
      # @param [Hash] headers additional http headers
      def update(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/usergroups/:id", params
        call(:"put", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def destroy(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/usergroups/:id", params
        call(:"delete", url, params, headers)
      end

    end
  end
end
