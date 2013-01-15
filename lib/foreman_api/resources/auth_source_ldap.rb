module ForemanApi
  module Resources
    class AuthSourceLdap < Apipie::Client::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["auth_source_ldaps"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["page", "per_page"]
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/auth_source_ldaps", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["id"]
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/auth_source_ldaps/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: {"auth_source_ldap"=>["name", "host", "port", "account", "base_dn", "account_password", "attr_login", "attr_firstname", "attr_lastname", "attr_mail", "onthefly_register", "tls"]}
      #
      # @param [Hash] headers additional http headers
      def create(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/auth_source_ldaps", params
        call(:"post", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: {"id"=>nil, "auth_source_ldap"=>["name", "host", "port", "account", "base_dn", "account_password", "attr_login", "attr_firstname", "attr_lastname", "attr_mail", "onthefly_register", "tls"]}
      #
      # @param [Hash] headers additional http headers
      def update(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/auth_source_ldaps/:id", params
        call(:"put", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # allowed keys are: ["id"]
      #
      # @param [Hash] headers additional http headers
      def destroy(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/auth_source_ldaps/:id", params
        call(:"delete", url, params, headers)
      end

    end
  end
end
