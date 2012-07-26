require 'foreman_api/base'
require 'foreman_api/version'

resource_files = Dir[File.expand_path('../foreman_api/resources/*.rb', __FILE__)]
resource_files.each { |f| require f }

module ForemanApi
  def self.client_config
    @client_config ||= { :base_url => "http://localhost:3000",
                         :oauth    => { :consumer_key    => 'consumer',
                                        :consumer_secret => 'shhhh' } }
  end
end
