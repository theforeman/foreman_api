module ForemanApi
  module Resources
    class OperatingSystem < ForemanApi::Base

      def index
        call(:get, "/api/operatingsystems")
      end

      def show(id)
        call(:get, "/api/operatingsystems/#{id}")
      end

      def create(params = {})
        validate_params!(params, {"operatingsystem"=>["name", "major", "minor"]})
        call(:post, "/api/operatingsystems", params)
      end

      def update(id, params = {})
        validate_params!(params, {"operatingsystem"=>["name", "major", "minor"]})
        call(:put, "/api/operatingsystems/#{id}", params)
      end

      def destroy(id)
        call(:delete, "/api/operatingsystems/#{id}")
      end

      def bootfiles(id, params = {})
        validate_params!(params, ["medium", "architecture"])
        call(:get, "/api/operatingsystems/#{id}/bootfiles", :params => params)
      end

    end
  end
end
