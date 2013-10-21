module ForemanApi
  module Resources
    class TemplateKind < ForemanApi::Base
      def self.doc
        @doc ||= ForemanApi.doc['resources']["template_kinds"]
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

    end
  end
end
