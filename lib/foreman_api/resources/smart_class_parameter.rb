module ForemanApi
  module Resources
    class SmartClassParameter < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["smart_class_parameters"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] environment_id
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
      # @option params [String] id
      # @option params [Hash] smart_class_parameter
      #   allowed keys are:
      #   * default_value [String]
      #   * description [String]
      #   * override [String]
      #   * override_value_order [String]
      #   * parameter_type [String]
      #   * path [String]
      #   * required [String]
      #   * validator_rule [String]
      #   * validator_type [String]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def update(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
