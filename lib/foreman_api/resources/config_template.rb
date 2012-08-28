module ForemanApi
  module Resources
    class ConfigTemplate < ForemanApi::Base

      def index(params = {}, headers = {})
        validate_params!(params, ["search", "order"])
        call(:get, "/api/config_templates", :params => params, :headers => headers)
      end

      def show(id, params = {}, headers = {})
        call(:get, "/api/config_templates/#{id}", :headers => headers)
      end

      def create(params = {}, headers = {})
        validate_params!(params, {"config_template"=>["name", "template", "snippet", "audit_comment", "template_kind_id", "template_combinations_attributes", "operatingsystem_ids"]})
        call(:post, "/api/config_templates", :payload => params, :headers => headers)
      end

      def update(id, params = {}, headers = {})
        validate_params!(params, {"config_template"=>["name", "template", "snippet", "audit_comment", "template_kind_id", "template_combinations_attributes", "operatingsystem_ids"]})
        call(:put, "/api/config_templates/#{id}", :payload => params, :headers => headers)
      end

      def revision(params = {}, headers = {})
        validate_params!(params, ["version"])
        call(:get, "/api/config_templates/revision", :params => params, :headers => headers)
      end

      def destroy(id, params = {}, headers = {})
        call(:delete, "/api/config_templates/#{id}", :headers => headers)
      end

      def build_pxe_default(params = {}, headers = {})
        call(:get, "/api/config_templates/build_pxe_default", :headers => headers)
      end

    end
  end
end
