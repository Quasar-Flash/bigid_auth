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
  s.required_ruby_version = ">= 2.5"
  s.files = Dir["{lib}/**/*"] + ["LICENSE.txt", "Rakefile", "README.md", "CHANGELOG.md"]
  s.test_files = Dir["spec/**/*"]
  s.license = "MIT"

  s.metadata["changelog_uri"] = "https://github.com/Quasar-Flash/bigid-auth-ruby/blob/master/CHANGELOG.md"
  s.metadata["source_code_uri"] = "https://github.com/Quasar-Flash/bigid-auth-ruby"
  s.metadata["bug_tracker_uri"] = "https://github.com/Quasar-Flash/bigid-auth-ruby/issues"

  s.add_dependency             "faraday", "~> 1.4.1", ">= 1.0"
  s.add_dependency             "i18n", "~> 1.8.0", ">= 1.0"
  s.add_dependency             "json", "~> 2.5.0", ">= 2.0"

  s.add_development_dependency "bundler", ">= 1.2.0"
  s.add_development_dependency "factory_bot", "~> 6.1.0"
  s.add_development_dependency "gemsurance", "~> 0.10"
  s.add_development_dependency "pry", "~> 0.14.0"
  s.add_development_dependency "rake", "~> 13.0", ">= 10.0.0"
  s.add_development_dependency "rspec", "~> 3.10.0"
  s.add_development_dependency "rubocop", "~> 1.12.0"
  s.add_development_dependency "rubocop-packaging", "~> 0.5.0"
  s.add_development_dependency "rubocop-performance", "~> 1.11.4"
  s.add_development_dependency "simplecov", "~> 0.21.0"
end
