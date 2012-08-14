module ForemanApi
  module Resources
    class User < ForemanApi::Base

      def index(headers = {})
        call(:get, "/api/users", :headers => headers)
      end

      def show(id, headers = {})
        call(:get, "/api/users/#{id}", :headers => headers)
      end

      def create(params = {}, headers = {})
        validate_params!(params, {"user"=>["login", "firstname", "lastname", "mail", "admin", "password", "auth_source_id"]})
        call(:post, "/api/users", :payload => params, :headers => headers)
      end

      def update(id, params = {}, headers = {})
        validate_params!(params, {"user"=>["login", "firstname", "lastname", "mail", "admin", "password"]})
        call(:put, "/api/users/#{id}", :payload => params, :headers => headers)
      end

      def destroy(id, headers = {})
        call(:delete, "/api/users/#{id}", :headers => headers)
      end

    end
  end
end
