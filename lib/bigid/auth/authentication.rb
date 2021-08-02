# frozen_string_literal: true

module Bigid
  module Auth
    class Authentication
      def initialize(connection: Connection.new,
                      username: Bigid.configuration.username,
                      password: Bigid.configuration.password,
                      token_expiration_time_in_seconds: Bigid::Auth::AUTH_ENDPOINT)
        @connection = connection
        @token_expiration_time_in_seconds = Bigid::Auth::TOKEN_EXPIRATION
        @username = username
        @password = password
      end

      def login
        res = @connection.post(url: "Generate", body: login_body)

        return res if res.status == 200

        raise Bigid::Auth::InvalidCredentialsError if res.status == 401
        raise Bigid::Auth::BadRequestError if res.status == 400
        raise Bigid::Auth::ServerError if res.status == 500
      end

      private
        def login_body
          {
            login: @username,
            password: @password,
            expires: @token_expiration_time_in_seconds.to_i
          }.to_json
        end
    end
  end
end
