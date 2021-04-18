# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)
require "bigid/auth/version"

Gem::Specification.new do |s|
  s.name        = "bigid_auth"
  s.version     = Bigid::Auth::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Danilo Carolino"]
  s.email       = ["danilo.carolino@qflash.com.br"]
  s.homepage    = "https://github.com/Quasar-Flash/bigid-auth-ruby"
  s.summary     = "Bigid Auth Library"
  s.description = "A library to use BigData Corps auth features"

  s.files = Dir["{lib}/**/*"] + ["LICENSE.txt", "Rakefile", "README.md", "CHANGELOG.md"]
  s.test_files = Dir["spec/**/*"]
  s.license = "MIT"

  s.add_dep***REMOVED***ency             "faraday", "~> 1.4.0", ">= 1.0"
  s.add_dep***REMOVED***ency             "i18n", "~> 1.8.0", ">= 1.0"
  s.add_dep***REMOVED***ency             "json", "~> 2.5.0", ">= 2.0"

  s.add_development_dep***REMOVED***ency "bundler", ">= 1.2.0"
  s.add_development_dep***REMOVED***ency "factory_bot", "~> 6.1.0"
  s.add_development_dep***REMOVED***ency "gemsurance", "~> 0.10"
  s.add_development_dep***REMOVED***ency "pry", "~> 0.14.0"
  s.add_development_dep***REMOVED***ency "rake", "~> 13.0", ">= 10.0.0"
  s.add_development_dep***REMOVED***ency "rspec", "~> 3.10.0"
  s.add_development_dep***REMOVED***ency "rubocop", "~> 1.12.0"
  s.add_development_dep***REMOVED***ency "rubocop-packaging", "~> 0.5.0"
  s.add_development_dep***REMOVED***ency "rubocop-performance", "~> 1.10.0"
  s.add_development_dep***REMOVED***ency "simplecov", "~> 0.21.0"
***REMOVED***
