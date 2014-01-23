module ForemanApi
  module Resources
    class ConfigTemplate < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["config_templates"]
      end

      # @param [Hash] params a hash of params to be passed to the service
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
      # @option params [Hash, nil] config_template
      #   allowed keys are:
      #   * operatingsystem_ids [Array, nil]  array of operating systems id to associate the template with 
      #   * template_kind_id [String, nil]  not relevant for snippet 
      #   * audit_comment [String, nil]
      #   * name [String]  template name 
      #   * snippet [String, nil]
      #   * template [String]
      #   * template_combinations_attributes [Array, nil]  array of template combinations (hostgroup_id, environment_id) 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [Hash, nil] config_template
      #   allowed keys are:
      #   * operatingsystem_ids [Array, nil]  array of operating systems id to associate the template with 
      #   * template_kind_id [String, nil]  not relevant for snippet 
      #   * audit_comment [String, nil]
      #   * name [String]  template name 
      #   * snippet [String, nil]
      #   * template [String]
      #   * template_combinations_attributes [Array, nil]  array of template combinations (hostgroup_id, environment_id) 
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def update(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] version  template version 
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
