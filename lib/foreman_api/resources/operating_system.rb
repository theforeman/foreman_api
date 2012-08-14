module ForemanApi
  module Resources
    class OperatingSystem < ForemanApi::Base

      def index(headers = {})
        call(:get, "/api/operatingsystems", :headers => headers)
      end

      def show(id, headers = {})
        call(:get, "/api/operatingsystems/#{id}", :headers => headers)
      end

      def create(params = {}, headers = {})
        validate_params!(params, {"operatingsystem"=>["name", "major", "minor"]})
        call(:post, "/api/operatingsystems", :payload => params, :headers => headers)
      end

      def update(id, params = {}, headers = {})
        validate_params!(params, {"operatingsystem"=>["name", "major", "minor"]})
        call(:put, "/api/operatingsystems/#{id}", :payload => params, :headers => headers)
      end

      def destroy(id, headers = {})
        call(:delete, "/api/operatingsystems/#{id}", :headers => headers)
      end

      def bootfiles(id, params = {}, headers = {})
        validate_params!(params, ["medium", "architecture"])
        call(:get, "/api/operatingsystems/#{id}/bootfiles", :params => params, :headers => headers)
      end

    end
  end
end
