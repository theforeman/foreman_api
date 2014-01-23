module ForemanApi
  module Resources
    class OperatingSystem < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["operatingsystems"]
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] order  for example, name asc, or name desc 
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
      # @option params [Hash, nil] operatingsystem
      #   allowed keys are:
      #   * description [String, nil]
      #   * family [String, nil]
      #   * major [String]
      #   * minor [String]
      #   * name [String]
      #   * release_name [String, nil]
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def create(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [Hash, nil] operatingsystem
      #   allowed keys are:
      #   * description [String, nil]
      #   * family [String, nil]
      #   * major [String]
      #   * minor [String]
      #   * name [String]
      #   * release_name [String, nil]
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

      # @param [Hash] params a hash of params to be passed to the service
      # @option params [String] id
      # @option params [String] architecture
      # @option params [String] medium
      #
      # @param [Hash] headers additional http headers
      # @return [Array] First item: parsed data; second item: raw body
      def bootfiles(params = {}, headers = {})
        perform_call(__method__, params, headers)
      end

    end
  end
end
