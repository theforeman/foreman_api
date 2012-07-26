module ForemanApi
  module Resources
    class Architecture < ForemanApi::Base

      def index
        call(:get, "/api/architectures")
      end

      def show(id)
        call(:get, "/api/architectures/#{id}")
      end

      def create(params = {})
        validate_params!(params, {"architecture"=>["name"]})
        call(:post, "/api/architectures", params)
      end

      def update(id, params = {})
        validate_params!(params, {"architecture"=>["name"]})
        call(:put, "/api/architectures/#{id}", params)
      end

      def destroy(id)
        call(:delete, "/api/architectures/#{id}")
      end

    end
  end
end
