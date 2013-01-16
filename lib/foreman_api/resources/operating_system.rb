module ForemanApi
  module Resources
    class OperatingSystem < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["operatingsystems"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["search", "order", "page", "per_page"]
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/operatingsystems", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["id"]
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/operatingsystems/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: {"operatingsystem"=>["name", "major", "minor", "family", "release_name"]}
      #
      # @param [Hash] headers additional http headers
      def create(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/operatingsystems", params
        call(:"post", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: {"id"=>nil, "operatingsystem"=>["name", "major", "minor", "family", "release_name"]}
      #
      # @param [Hash] headers additional http headers
      def update(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/operatingsystems/:id", params
        call(:"put", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["id"]
      #
      # @param [Hash] headers additional http headers
      def destroy(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/operatingsystems/:id", params
        call(:"delete", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["id", "medium", "architecture"]
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
