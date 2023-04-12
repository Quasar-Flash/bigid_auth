# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)
require "bigid/auth/version"

Gem::Specification.new do |s|
  s.name        = "bigid_auth"
  s.version     = Bigid::Auth::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Danilo Carolino"]
  s.email       = ["danilo.carolino@qflash.com.br"]
  s.homepage    = "https://github.com/Quasar-Flash/bigid_auth"
  s.summary     = "Bigid Auth Library"
  s.description = "A library to use BigData Corps auth features"
  s.required_ruby_version = ">= 2.7"
  s.files = Dir["{lib}/**/*"] + Dir["{docs}/**/*"] + ["Rakefile"]
  s.test_files = Dir["spec/**/*"]
  s.license = "MIT"

  s.metadata["changelog_uri"] = "https://github.com/Quasar-Flash/bigid_auth/blob/master/CHANGELOG.md"
  s.metadata["source_code_uri"] = "https://github.com/Quasar-Flash/bigid_auth"
  s.metadata["bug_tracker_uri"] = "https://github.com/Quasar-Flash/bigid_auth/issues"

  s.add_dependency             "flash_integration", "~> 1.0.0"
  s.add_dependency             "i18n"
  s.add_dependency             "json"

  s.add_development_dependency "factory_bot", "~> 6.2.1"
  s.add_development_dependency "pry", "~> 0.14.1"
  s.add_development_dependency "rake", "~> 13.0.6", ">= 10.0"
  s.add_development_dependency "rspec", "~> 3.12.0"
  s.add_development_dependency "rubocop", "~> 1.50.1"
  s.add_development_dependency "rubocop-packaging", "~> 0.5.2"
  s.add_development_dependency "rubocop-performance", "~> 1.17.1"
  s.add_development_dependency "simplecov", "~> 0.22.0"
end
