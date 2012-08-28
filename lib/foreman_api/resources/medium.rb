module ForemanApi
  module Resources
    class Medium < ForemanApi::Base

      def index(params = {}, headers = {})
        validate_params!(params, ["search", "order"])
        call(:get, "/api/media", :params => params, :headers => headers)
      end

      def show(id, params = {}, headers = {})
        call(:get, "/api/media/#{id}", :headers => headers)
      end

      def create(params = {}, headers = {})
        validate_params!(params, {"medium"=>["name", "path", "os_family"]})
        call(:post, "/api/medium", :payload => params, :headers => headers)
      end

      def update(id, params = {}, headers = {})
        validate_params!(params, {"medium"=>["name", "path", "os_family"]})
        call(:put, "/api/media/#{id}", :payload => params, :headers => headers)
      end

      def destroy(id, params = {}, headers = {})
        call(:delete, "/api/media/#{id}", :headers => headers)
      end

    end
  end
end
