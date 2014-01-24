# -*- encoding: utf-8 -*-
require File.expand_path('../lib/foreman_api/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Martin Bačovský"]
  gem.email         = ["mbacovsk@redhat.com"]
  gem.description   = %q{Helps you to use Foreman's API calls from your app}
  gem.summary       = %q{Ruby bindings for Forman's rest API}
  gem.homepage      = "http://github.com/theforeman/foreman_api"

  gem.files         = Dir['{lib,doc,test}/**/*', 'README*', 'MIT-LICENSE']
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.files.reject! do |fn|
    fn.start_with?("lib/foreman_api/generator")
  end
  gem.name          = "foreman_api"
  gem.require_paths = ["lib"]
  gem.version       = ForemanApi::VERSION

  gem.add_dependency 'json', '~> 1.8'
  gem.add_dependency 'rest-client', '~> 1.6'
  gem.add_dependency 'oauth', '~> 0.4'
end
