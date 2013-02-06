module ForemanApi
  module Resources
    class AuthSourceLdap < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["auth_source_ldaps"]
      end
      
      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] page Paginate results
      # @option params [String] per_page Number of entries per request
      #
      # @param [Hash] headers additional http headers
      def index(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/auth_source_ldaps", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      #
      # @param [Hash] headers additional http headers
      def show(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/auth_source_ldaps/:id", params
        call(:"get", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Hash] auth_source_ldap 
      #   allowed keys are: 
      #   * account [String],
      #   * account_password [String] Required if onthefly_register is true,
      #   * attr_firstname [String] Required if onthefly_register is true,
      #   * attr_lastname [String] Required if onthefly_register is true,
      #   * attr_login [String] Required if onthefly_register is true,
      #   * attr_mail [String] Required if onthefly_register is true,
      #   * base_dn [String],
      #   * host [String],
      #   * name [String],
      #   * onthefly_register [String],
      #   * port [String] Defaults to 389,
      #   * tls [String],
      #
      # @param [Hash] headers additional http headers
      def create(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/auth_source_ldaps", params
        call(:"post", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
      # @option params [Hash] auth_source_ldap 
      #   allowed keys are: 
      #   * account [String],
      #   * account_password [String] Required if onthefly_register is true,
      #   * attr_firstname [String] Required if onthefly_register is true,
      #   * attr_lastname [String] Required if onthefly_register is true,
      #   * attr_login [String] Required if onthefly_register is true,
      #   * attr_mail [String] Required if onthefly_register is true,
      #   * base_dn [String],
      #   * host [String],
      #   * name [String],
      #   * onthefly_register [String],
      #   * port [String] Defaults to 389,
      #   * tls [String],
      #
      # @param [Hash] headers additional http headers
      def update(params = { }, headers = { })
        check_params params, :allowed => true, :method => __method__
        url, params = fill_params_in_url "/api/auth_source_ldaps/:id", params
        call(:"put", url, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id 
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
