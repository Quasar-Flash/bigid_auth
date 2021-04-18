# frozen_string_literal: true

module Bigid
  module Auth
    module Integration
      class Connection
        attr_reader :base_url

        def initialize(base_url:, request_class: Faraday)
          @request_class = request_class
          @base_url = base_url
        ***REMOVED***

        def get(url: "", params: {}, headers: {})
          s***REMOVED***_request(
            method: :get,
            url: url,
            params: params,
            headers: headers
          )
        ***REMOVED***

        def post(url: "", params: {}, headers: {}, body: {}, multipart: false)
          s***REMOVED***_request(
            method: :post,
            url: url,
            params: params,
            headers: headers,
            body: body,
            multipart: multipart
          )
        ***REMOVED***

        def put(url: "", params: {}, headers: {}, body: {})
          s***REMOVED***_request(
            method: :put,
            url: url,
            params: params,
            headers: headers,
            body: body
          )
        ***REMOVED***

        def patch(url: "", params: {}, headers: {}, body: {})
          s***REMOVED***_request(
            method: :patch,
            url: url,
            params: params,
            headers: headers,
            body: body
          )
        ***REMOVED***

        def delete(url: "", params: {}, headers: {}, body: {})
          s***REMOVED***_request(
            method: :delete,
            url: url,
            params: params,
            headers: headers,
            body: body
          )
        ***REMOVED***

        def default_headers
          {}
        ***REMOVED***

        private
          def s***REMOVED***_request(method:, url:, params:, headers:, body: nil, multipart: false)
            connection = multipart ? multipart_connection : @request_class.new(url: @base_url)

            merged_headers = default_headers.merge(headers)

            request = build_request(
              method, connection.build_url(url).to_s, params, merged_headers, body
            )

            result =
              connection.s***REMOVED***(method) do |request|
                request.url(url)
                request.params = params
                request.headers = merged_headers
                request.body = body if body
              ***REMOVED***

            build_response(request, result.status, result.headers, result.body)
          ***REMOVED***

          def multipart_connection
            @request_class.new(url: @base_url) do |conn|
              conn.use Bigid::Auth::Integration::MultipartFlat
              conn.request :url_encoded
              conn.adapter @request_class.default_adapter
            ***REMOVED***
          ***REMOVED***

          def build_request(method, url, params, headers, body)
            Bigid::Auth::Integration::Request.new(
              method: method,
              url: url,
              params: params,
              headers: headers,
              body: body,
              time: Time.now.utc
            )
          ***REMOVED***

          def build_response(request, status, headers, body)
            Bigid::Auth::Integration::Response.new(
              request: request,
              status: status,
              headers: headers,
              body: body,
              time: Time.now.utc
            )
          ***REMOVED***
      ***REMOVED***
    ***REMOVED***
  ***REMOVED***
***REMOVED***
