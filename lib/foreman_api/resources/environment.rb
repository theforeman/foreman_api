module ForemanApi
  module Resources
    class Environment < ForemanApi::Base

      def index(params = {}, headers = {})
        validate_params!(params, ["search", "order"])
        call(:get, "/api/environments", :params => params, :headers => headers)
      end

      def show(id, params = {}, headers = {})
        call(:get, "/api/environments/#{id}", :headers => headers)
      end

      def create(params = {}, headers = {})
        validate_params!(params, {"environment"=>["name"]})
        call(:post, "/api/environments", :payload => params, :headers => headers)
      end

      def update(id, params = {}, headers = {})
        validate_params!(params, {"environment"=>["name"]})
        call(:put, "/api/environments/#{id}", :payload => params, :headers => headers)
      end

      def destroy(id, params = {}, headers = {})
        call(:delete, "/api/environments/#{id}", :headers => headers)
      end

    end
  end
end
