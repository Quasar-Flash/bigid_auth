# frozen_string_literal: true

require "faraday"
require "i18n"
require "json"

require "bigid/auth/version"

require "bigid/auth/integration/multipart_flat"
require "bigid/auth/integration/response"
require "bigid/auth/integration/request"
require "bigid/auth/integration/connection"

require "bigid/auth/connection"
require "bigid/auth/authentication"
require "bigid/auth/authenticated_resource"
require "bigid/auth/authenticated_connection"

require "bigid/auth/base_error"
require "bigid/auth/authentication_error"
require "bigid/auth/bad_request_error"
require "bigid/auth/invalid_credentials_error"
require "bigid/auth/server_error"

module Bigid
  BASE_URL = "https://bigid.bigdatacorp.com.br"

  class << self
    attr_writer :configuration

    def configuration
      @configuration ||= Configuration.new
    ***REMOVED***
  ***REMOVED***

  def self.configure
    self.configuration ||= Configuration.new

    yield(configuration)
  ***REMOVED***

  class Configuration
    attr_writer :username, :password

    def username
      @username ||= ENV["BIGID_USERNAME"]
    ***REMOVED***

    def password
      @password ||= ENV["BIGID_PASSWORD"]
    ***REMOVED***
  ***REMOVED***

  module Auth
    AUTH_ENDPOINT    = "https://accesstoken.bigdatacorp.com.br"
    TOKEN_EXPIRATION = 60_000

    I18n.load_path << Dir["#{File.expand_path('config/locales')}/*.yml"]
    I18n.config.available_locales = :en, :'pt-BR'
    I18n.default_locale = :en
  ***REMOVED***
***REMOVED***
