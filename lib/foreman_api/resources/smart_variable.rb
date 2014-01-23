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
      # @option params [Hash, nil] smart_variable
      #   allowed keys are:
      #   * puppetclass_id [String, nil]
      #   * default_value [String, nil]
      #   * description [String, nil]
      #   * override_value_order [String, nil]
      #   * validator_rule [String, nil]
      #   * validator_type [String, nil]
      #   * variable [String]
      #   * variable_type [String, nil]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [Hash, nil] smart_variable
      #   allowed keys are:
      #   * puppetclass_id [String, nil]
      #   * default_value [String, nil]
      #   * description [String, nil]
      #   * override_value_order [String, nil]
      #   * validator_rule [String, nil]
      #   * validator_type [String, nil]
      #   * variable [String]
      #   * variable_type [String, nil]
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
