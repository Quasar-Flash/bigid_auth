# frozen_string_literal: true

module Bigid
  module Auth
    class AuthenticatedConnection < Connection
      COOKIE_CACHE_KEY = "BIG_ID_AUTHENTICATION_COOKIE_CACHE_KEY"

      def initialize(authentication: Bigid::Auth::Authentication.new,
                      cache: defined?(Rails) ? Rails.cache : nil,
                      request_class: Faraday,
                      base_url: Bigid::BASE_URL,
                      token_expiration_time_in_seconds: Bigid::Auth::TOKEN_EXPIRATION)
        super(request_class: request_class, base_url: base_url)
        @authentication = authentication
        @cache = cache
        @token_expiration_time_in_seconds = token_expiration_time_in_seconds
      end

      def default_headers
        super.merge(Authorization: (@cache ? cached_token : auth_token))
      end

      private
        def auth_token
          response = @authentication.login
          extract_token(response.body)
        end

        def cached_token
          @cache.fetch(COOKIE_CACHE_KEY, expires_in: @token_expiration_time_in_seconds.seconds) do
            auth_token
          end
        end

        def extract_token(value)
          raise Bigid::Auth::AuthenticationError unless value

          value_json = JSON.parse(value)
          "Bearer #{value_json['token']}"
        end
    end
  end
end
