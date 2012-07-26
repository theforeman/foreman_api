module ForemanApi
  module Resources
    class User < ForemanApi::Base

      def index
        call(:get, "/api/users")
      end

      def show(id)
        call(:get, "/api/users/#{id}")
      end

      def create(params = {})
        validate_params!(params, {"user"=>["login", "firstname", "lastname", "mail", "admin"]})
        call(:post, "/api/users", params)
      end

      def update(id, params = {})
        validate_params!(params, {"user"=>["login", "firstname", "lastname", "mail", "admin"]})
        call(:put, "/api/users/#{id}", params)
      end

      def destroy(id)
        call(:delete, "/api/users/#{id}")
      end

    end
  end
end
