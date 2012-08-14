module ForemanApi
  module Resources
    class Home < ForemanApi::Base

      def index(params = {}, headers = {})
        call(:get, "/api", :headers => headers)
      end

      def status(params = {}, headers = {})
        call(:get, "/api/status", :headers => headers)
      end

    end
  end
end
