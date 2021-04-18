# frozen_string_literal: true

module Bigid
  module Auth
    class AuthenticatedResource
      def initialize(connection: AuthenticatedConnection.new)
        @connection = connection
      end
    end
  end
end
