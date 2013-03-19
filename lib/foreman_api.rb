require 'json'
require 'yaml'

module ForemanApi
end

require 'foreman_api/base'
require 'foreman_api/version'
resource_files = Dir[File.expand_path("#{ForemanApi.root}/foreman_api/resources/*.rb", __FILE__)]
resource_files.each { |f| require f }
