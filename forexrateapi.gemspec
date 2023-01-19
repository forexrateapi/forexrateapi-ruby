# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'forexrateapi/version'

Gem::Specification.new do |s|
  s.name = 'forexrateapi'
  s.version = ForexRateAPI::VERSION
  s.authors = ['ForexRateAPI']
  s.email = 'contact@forexrateapi.com'
  s.files = Dir['{bin,lib}/**/*'] + ['README.md', 'LICENSE.md']
  s.require_paths = ['lib']
  s.homepage = 'http://github.com/forexrateapi/forexrateapi-ruby'
  s.licenses = ['MIT']
  s.summary = 'Official ForexRateAPI Ruby client.'
  s.add_dependency 'faraday', '>= 1.0.0'
  s.add_dependency 'faraday_middleware'
end
