module ForemanApi
  module Resources
    class Dashboard < ForemanApi::Base

      def index(params = {}, headers = {})
        validate_params!(params, ["search"])
        call(:get, "/api/dashboard", :params => params, :headers => headers)
      end

    end
  end
end
