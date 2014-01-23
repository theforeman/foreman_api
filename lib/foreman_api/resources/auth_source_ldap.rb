module ForemanApi
  module Resources
    class AuthSourceLdap < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["auth_source_ldaps"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] page  paginate results 
      # @option params [String] per_page  number of entries per request 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def index(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def show(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Hash, nil] auth_source_ldap
      #   allowed keys are:
      #   * account [String, nil]
      #   * account_password [String, nil]  required if onthefly_register is true 
      #   * attr_firstname [String, nil]  required if onthefly_register is true 
      #   * attr_lastname [String, nil]  required if onthefly_register is true 
      #   * attr_login [String, nil]  required if onthefly_register is true 
      #   * attr_mail [String, nil]  required if onthefly_register is true 
      #   * base_dn [String, nil]
      #   * host [String]
      #   * name [String]
      #   * onthefly_register [String, nil]
      #   * port [String, nil]  defaults to 389 
      #   * tls [String, nil]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [Hash, nil] auth_source_ldap
      #   allowed keys are:
      #   * account [String, nil]
      #   * account_password [String, nil]  required if onthefly_register is true 
      #   * attr_firstname [String, nil]  required if onthefly_register is true 
      #   * attr_lastname [String, nil]  required if onthefly_register is true 
      #   * attr_login [String, nil]  required if onthefly_register is true 
      #   * attr_mail [String, nil]  required if onthefly_register is true 
      #   * base_dn [String, nil]
      #   * host [String]
      #   * name [String]
      #   * onthefly_register [String, nil]
      #   * port [String, nil]  defaults to 389 
      #   * tls [String, nil]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def update(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def destroy(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
