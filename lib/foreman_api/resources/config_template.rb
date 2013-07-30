module ForemanApi
  module Resources
    class ConfigTemplate < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["config_templates"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] order Sort results
      # @option params [String] page Paginate results
      # @option params [String] per_page Number of entries per request
      # @option params [String] search Filter results
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
      # @option params [Hash] config_template
      #   allowed keys are:
      #   * operatingsystem_ids [Array] Array of operating systems id to associate the template with
      #   * template_kind_id [String, nil] Not relevant for snippet
      #   * audit_comment [String, nil]
      #   * name [String] Template name
      #   * snippet [String, nil]
      #   * template [String]
      #   * template_combinations_attributes [Array] Array of template combinations (hostgroup_id, environment_id)
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [Hash] config_template
      #   allowed keys are:
      #   * operatingsystem_ids [Array] Array of operating systems id to associate the template with
      #   * template_kind_id [String, nil] Not relevant for snippet
      #   * audit_comment [String, nil]
      #   * name [String] Template name
      #   * snippet [String]
      #   * template [String]
      #   * template_combinations_attributes [Array] Array of template combinations (hostgroup_id, environment_id)
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def update(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] version Template version
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def revision(params = {}, headers = {})
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

      # @param [Hash] params a hash of params to be passed to the service
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def build_pxe_default(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
