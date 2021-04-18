# frozen_string_literal: true

module Bigid
  module Auth
    class Connection < Bigid::Auth::Integration::Connection
      def initialize(request_class: Faraday, base_url: Bigid::Auth::AUTH_ENDPOINT)
        super(request_class: request_class, base_url: base_url)
      end

      def default_headers
        {
          'Content-Type': "application/json",
          'Accept': "application/json"
        }
      end
    end
  end
end
