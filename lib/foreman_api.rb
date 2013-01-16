require 'json'
require 'yaml'

module ForemanApi
  def self.client_config
    @client_config ||= YAML.load_file("#{root}/foreman_api/config.yml")
  end

  def self.root
    @root ||= File.expand_path(File.dirname(__FILE__))
  end

  def self.doc
    @doc ||= File.open("#{root}/foreman_api/documentation.json", 'r') do |f|
      JSON.load(f.read)['docs']
    end
  end
end

require 'foreman_api/base'
require 'foreman_api/version'
resource_files = Dir[File.expand_path("#{ForemanApi.root}/foreman_api/resources/*.rb", __FILE__)]
resource_files.each { |f| require f }
