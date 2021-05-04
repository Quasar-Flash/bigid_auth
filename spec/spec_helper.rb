# frozen_string_literal: true

require "rubygems"
require "bundler"
require "bigid_auth"

begin
  Bundler.setup(:default, :development, :test)
rescue Bundler::BundlerError => e
  warn e.message
  warn "Run `bundle install` to install missing gems"

  exit e.status_code
***REMOVED***

require "simplecov"

SimpleCov.start do
  add_filter "spec"
***REMOVED***

RSpec.configure do |config|
  # some (optional) config here
***REMOVED***

# minitest/mock # Uncomment me to use minitest mocks
