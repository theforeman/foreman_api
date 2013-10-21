module ForemanApi
  module Resources
    class SmartVariable < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["smart_variables"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] host_id
      # @option params [String] hostgroup_id
      # @option params [String] puppetclass_id
      # @option params [String] order  sort results 
      # @option params [String] page  paginate results 
      # @option params [String] per_page  number of entries per request 
      # @option params [String] search  filter results 
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
      # @option params [Hash] smart_variable
      #   allowed keys are:
      #   * puppetclass_id [String]
      #   * default_value [String]
      #   * description [String]
      #   * override_value_order [String]
      #   * validator_rule [String]
      #   * validator_type [String]
      #   * variable [String]
      #   * variable_type [String]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [Hash] smart_variable
      #   allowed keys are:
      #   * puppetclass_id [String]
      #   * default_value [String]
      #   * description [String]
      #   * override_value_order [String]
      #   * validator_rule [String]
      #   * validator_type [String]
      #   * variable [String]
      #   * variable_type [String]
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
