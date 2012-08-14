# -*- encoding: utf-8 -*-
require File.expand_path('../lib/foreman_api/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Martin Bačovský"]
  gem.email         = ["mbacovsk@redhat.com"]
  gem.description   = %q{Helps you to use Foreman's API calls from your app}
  gem.summary       = %q{Ruby bindings for Forman's rest API}
  gem.homepage      = "http://github.com/mbacovsky/foreman_api"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.files.reject! { |fn| fn == 'rubygem-foreman_api.spec' }
  gem.name          = "foreman_api"
  gem.require_paths = ["lib"]
  gem.version       = ForemanApi::VERSION

  gem.add_dependency 'json'
  gem.add_dependency 'rest-client', '>= 1.6.1'
  gem.add_dependency 'oauth'
end
