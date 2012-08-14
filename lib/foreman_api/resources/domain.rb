module ForemanApi
  module Resources
    class Domain < ForemanApi::Base

      def index(params = {}, headers = {})
        validate_params!(params, ["search", "order"])
        call(:get, "/api/domains", :params => params, :headers => headers)
      end

      def show(id, params = {}, headers = {})
        call(:get, "/api/domains/#{id}", :headers => headers)
      end

      def create(params = {}, headers = {})
        validate_params!(params, {"domain"=>["name", "fullname", "dns_id", "domain_parameters_attributes"]})
        call(:post, "/api/domains", :payload => params, :headers => headers)
      end

      def update(id, params = {}, headers = {})
        validate_params!(params, {"domain"=>["name", "fullname", "dns_id", "domain_parameters_attributes"]})
        call(:put, "/api/domains/#{id}", :payload => params, :headers => headers)
      end

      def destroy(id, params = {}, headers = {})
        call(:delete, "/api/domains/#{id}", :headers => headers)
      end

    end
  end
end
