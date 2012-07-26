module ForemanApi
  module Resources
    class Bookmark < ForemanApi::Base

      def index
        call(:get, "/api/bookmarks")
      end

      def show(id)
        call(:get, "/api/bookmarks/#{id}")
      end

      def create(params = {})
        validate_params!(params, {"bookmark"=>["name", "controller", "query"]})
        call(:post, "/api/bookmarks", params)
      end

      def update(id, params = {})
        validate_params!(params, {"bookmark"=>["name", "controller", "query"]})
        call(:put, "/api/bookmarks/#{id}", params)
      end

      def destroy(id)
        call(:delete, "/api/bookmarks/#{id}")
      end

    end
  end
end
