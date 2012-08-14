module ForemanApi
  module Resources
    class Bookmark < ForemanApi::Base

      def index(headers = {})
        call(:get, "/api/bookmarks", :headers => headers)
      end

      def show(id, headers = {})
        call(:get, "/api/bookmarks/#{id}", :headers => headers)
      end

      def create(params = {}, headers = {})
        validate_params!(params, {"bookmark"=>["name", "controller", "query"]})
        call(:post, "/api/bookmarks", :payload => params, :headers => headers)
      end

      def update(id, params = {}, headers = {})
        validate_params!(params, {"bookmark"=>["name", "controller", "query"]})
        call(:put, "/api/bookmarks/#{id}", :payload => params, :headers => headers)
      end

      def destroy(id, headers = {})
        call(:delete, "/api/bookmarks/#{id}", :headers => headers)
      end

    end
  end
end
