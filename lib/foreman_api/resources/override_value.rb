module ForemanApi
  module Resources
    class OverrideValue < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["override_values"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] smart_class_parameter_id
      # @option params [String] smart_variable_id
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
      # @option params [String] smart_class_parameter_id
      # @option params [String] smart_variable_id
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def show(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] smart_class_parameter_id
      # @option params [String] smart_variable_id
      # @option params [Hash] override_value
      #   allowed keys are:
      #   * match [String]
      #   * value [String]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [Object] id Part of +/api/smart_variables/:smart_variable_id/override_values/:id+ path
      # @option params [String] smart_class_parameter_id
      # @option params [String] smart_variable_id
      # @option params [Hash] override_value
      #   allowed keys are:
      #   * match [String]
      #   * value [String]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def update(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [String] smart_class_parameter_id
      # @option params [String] smart_variable_id
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def destroy(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
