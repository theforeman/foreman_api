module ForemanApi
  module Resources
    class OperatingSystem < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["operatingsystems"]
      end
      
      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] order For example, name asc, or name desc 
      # @option params [String] page Paginate results 
      # @option params [String] per_page Number of entries per request 
      # @option params [String] search Filter results 
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/operatingsystems", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/operatingsystems/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Hash] operatingsystem 
      #   allowed keys are: 
      #   * family [String],
      #   * major [String],
      #   * minor [String],
      #   * name [String],
      #   * release_name [String],
      #
      # @param [Hash] headers additional http headers
      def create(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/operatingsystems", params
        call(:"post", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      # @option params [Hash] operatingsystem 
      #   allowed keys are: 
      #   * family [String],
      #   * major [String],
      #   * minor [String],
      #   * name [String],
      #   * release_name [String],
      #
      # @param [Hash] headers additional http headers
      def update(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/operatingsystems/:id", params
        call(:"put", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def destroy(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/operatingsystems/:id", params
        call(:"delete", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      # @option params [String] architecture 
      # @option params [String] medium 
      #
      # @param [Hash] headers additional http headers
      def bootfiles(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/operatingsystems/:id/bootfiles", params
        call(:"get", url, params, headers)
      end

    end
  end
end
