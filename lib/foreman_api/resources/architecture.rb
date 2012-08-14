module ForemanApi
  module Resources
    class Architecture < ForemanApi::Base

      def index(headers = {})
        call(:get, "/api/architectures", :headers => headers)
      end

      def show(id, headers = {})
        call(:get, "/api/architectures/#{id}", :headers => headers)
      end

      def create(params = {}, headers = {})
        validate_params!(params, {"architecture"=>["name"]})
        call(:post, "/api/architectures", :payload => params, :headers => headers)
      end

      def update(id, params = {}, headers = {})
        validate_params!(params, {"architecture"=>["name"]})
        call(:put, "/api/architectures/#{id}", :payload => params, :headers => headers)
      end

      def destroy(id, headers = {})
        call(:delete, "/api/architectures/#{id}", :headers => headers)
      end

    end
  end
end
