module ForemanApi
  module Resources
    class Home < ForemanApi::Base

      def index
        call(:get, "/api")
      end

      def status
        call(:get, "/api/status")
      end

    end
  end
end
