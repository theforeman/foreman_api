module ForemanApi
  module Resources
    class Home < ForemanApi::Base

      def index(headers = {})
        call(:get, "/api", :headers => headers)
      end

      def status(headers = {})
        call(:get, "/api/status", :headers => headers)
      end

    end
  end
end
