# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="aspose_cells_cloud_client.rb">
   Copyright (c) 2026 Aspose.Cells Cloud
 </copyright>
 <summary>
   Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
 </summary>
--------------------------------------------------------------------------------------------------------------------
=end

require 'net/http'
require 'uri'
require 'json'
require 'time'
require 'securerandom'

require_relative 'configuration'
require_relative 'sdk_error'
require_relative 'rich_response'
require_relative 'request_option'

module Aspose
  module Cells
    module Cloud
      # The single entry point for executing Aspose.Cells Cloud requests.
      #
      # Owns a Configuration, authenticates via OAuth2 client-credentials, and executes
      # RequestOption instances over HTTP, returning RichResponse objects.
      class AsposeCellsCloudClient
        attr_reader :configuration

        # @param client_id [String] Aspose Cloud Client ID.
        # @param client_secret [String] Aspose Cloud Client Secret.
        # @param base_url [String] base endpoint (defaults to production).
        # @param options [Hash] additional Configuration keyword arguments
        #   (auth_url:, timeout:, retries:, api_version:, proxy:).
        def initialize(client_id, client_secret, base_url = 'https://api.aspose.cloud', **options)
          @configuration = Configuration.new(
            client_id: client_id,
            client_secret: client_secret,
            base_url: base_url,
            **options
          )
          @access_token = nil
          @token_expires_at = nil
        end

        # @return [Configuration] the underlying configuration object.
        def get_configuration
          @configuration
        end

        # Fetches an OAuth2 client-credentials access token and caches it until expiry.
        #
        # @return [String] the access token.
        def request_oauth_token
          return @access_token if valid_token?

          uri = URI.parse(@configuration.token_url)
          http = build_http(uri)
          req = Net::HTTP::Post.new(uri.request_uri)
          req['Content-Type'] = 'application/x-www-form-urlencoded'
          req['Accept'] = 'application/json'
          req.body = URI.encode_www_form(
            'grant_type' => 'client_credentials',
            'client_id' => @configuration.client_id,
            'client_secret' => @configuration.client_secret
          )

          response = http.request(req)
          unless response.is_a?(Net::HTTPSuccess)
            raise SDKError.new(
              "OAuth2 token request failed with status #{response.code}",
              code: response.code.to_i,
              response_body: response.body
            )
          end

          data = JSON.parse(response.body)
          @access_token = data['access_token']
          expires_in = (data['expires_in'] || 86_400).to_i
          @token_expires_at = Time.now + expires_in - 60
          @access_token || raise(SDKError, 'OAuth2 response did not include an access_token')
        end

        # Executes a single request and returns its RichResponse.
        #
        # HTTP responses (including 4xx/5xx) are returned so callers may inspect
        # +status_code+; transport-level failures raise SDKError.
        #
        # Executes a single request and returns its RichResponse.
        #
        # HTTP responses (including 4xx/5xx) are returned so callers may inspect
        # +status_code+; transport-level failures raise SDKError.
        #
        # (The Go SDK's `Do` method is named `execute` here because `do` is a
        # reserved word in Ruby.)
        #
        # @param request [RequestOption] the request to execute.
        # @return [RichResponse] the response.
        def execute(request)
          request_oauth_token

          method = request.get_method.to_s.upcase
          path = request.get_path.to_s
          query = request.get_query_parameters || {}
          headers = @configuration.header_parameters.merge(request.get_header_parameters || {})
          headers['Authorization'] = "Bearer #{@access_token}"

          url = @configuration.base_url.sub(%r{/+\z}, '') + path
          uri = URI.parse(url)
          uri.query = URI.encode_www_form(query) unless query.empty?

          attempts = @configuration.retries.to_i + 1
          last_error = nil
          attempts.times do
            begin
              return perform(uri, method, headers, request.get_json_body, request.get_multipart_form)
            rescue SDKError => e
              last_error = e
              raise e if e.code # server responded; do not retry
            rescue StandardError => e
              last_error = e
            end
          end
          raise SDKError, "Request failed after #{attempts} attempt(s): #{last_error&.message}"
        end

        # Executes several requests sequentially and returns their responses.
        #
        # @param requests [Array<RequestOption>] requests to run in order.
        # @return [Array<RichResponse>] one response per request.
        def execute_batch(*requests)
          requests.map { |request| execute(request) }
        end

        # Uploads a local file to cloud storage.
        #
        # @param path [String] remote path (e.g. `TestData/In/Book1.xlsx`).
        # @param file [String] local file path.
        # @param storage_name [String, nil] storage name.
        # @return [RichResponse] the upload response.
        # @raise [SDKError] if the upload does not succeed after retrying transient failures.
        def upload_file(path, file, storage_name: nil)
          request = AsposeCellsCloud::UploadFileRequest.new(
            path: path, upload_files: file, storage_name: storage_name
          )
          response = nil
          attempts = 0
          loop do
            attempts += 1
            response = execute(request)
            break if response.success?
            # Retry transient server-side failures before surfacing the error.
            break unless attempts < 3 && [408, 429, 500, 502, 503, 504].include?(response.status_code)
            sleep attempts
          end
          raise SDKError.new("Upload failed with status #{response.status_code}", code: response.status_code, response_body: response.body) unless response.success?
          response
        end

        # Downloads a file from cloud storage and returns its binary content.
        #
        # @param path [String] remote path.
        # @param storage_name [String, nil] storage name.
        # @param version_id [String, nil] file version id.
        # @return [String] the file bytes (`Encoding::BINARY`).
        def download_file(path, storage_name: nil, version_id: nil)
          request = AsposeCellsCloud::DownloadFileRequest.new(
            path: path, storage_name: storage_name, version_id: version_id
          )
          execute(request).to_bytes
        end

        private

        def valid_token?
          @access_token && @token_expires_at && Time.now < @token_expires_at
        end

        def perform(uri, method, headers, json_body, multipart)
          http = build_http(uri)
          req = build_request(method, uri, headers, json_body, multipart)
          response = http.request(req)

          body = response.body
          body = body.dup.force_encoding(Encoding::BINARY) if body

          RichResponse.new(response.code.to_i, response.to_hash, body)
        end

        def build_request(method, uri, headers, json_body, multipart)
          klass = case method
                  when 'GET' then Net::HTTP::Get
                  when 'POST' then Net::HTTP::Post
                  when 'PUT' then Net::HTTP::Put
                  when 'DELETE' then Net::HTTP::Delete
                  else raise SDKError, "Unsupported HTTP method: #{method}"
                  end

          req = klass.new(uri.request_uri)
          headers.each { |key, value| req[key] = value unless value.nil? }

          if multipart && !multipart.empty?
            content_type, payload = build_multipart(multipart)
            req['Content-Type'] = content_type
            req.body = payload
          elsif json_body
            req.body = json_body.is_a?(String) ? json_body : JSON.generate(json_body)
          end
          req
        end

        def build_multipart(fields)
          boundary = "----AsposeCellsRuby#{SecureRandom.hex(16)}"
          parts = +''
          fields.each do |name, value|
            if (file = file_part(value))
              parts << "--#{boundary}\r\n"
              parts << "Content-Disposition: form-data; name=\"#{name}\"; filename=\"#{file[:filename]}\"\r\n"
              parts << "Content-Type: #{file[:content_type]}\r\n\r\n"
              parts << file[:content]
              parts << "\r\n"
            else
              parts << "--#{boundary}\r\n"
              parts << "Content-Disposition: form-data; name=\"#{name}\"\r\n\r\n"
              parts << field_string(value)
              parts << "\r\n"
            end
          end
          parts << "--#{boundary}--\r\n"
          ["multipart/form-data; boundary=#{boundary}", parts]
        end

        # Returns `{ content:, filename:, content_type: }` when +value+ denotes a file part,
        # otherwise +nil+. Accepts a `FormFile`, a local path (`String`), or a readable
        # `IO`/`File`/`Tempfile`.
        def file_part(value)
          case value
          when FormFile
            { content: value.read, filename: value.filename, content_type: value.content_type }
          when String
            return nil unless file_field?(value)
            path = value.sub(/\A@/, '')
            { content: File.binread(path), filename: File.basename(path), content_type: 'application/octet-stream' }
          else
            return nil unless value.respond_to?(:read)
            # Read from the start of the stream; callers typically pass a File/Tempfile they just
            # wrote to, which sits at EOF unless rewound.
            value.rewind if value.respond_to?(:rewind)
            { content: value.read, filename: io_filename(value), content_type: 'application/octet-stream' }
          end
        end

        def file_field?(value)
          value.start_with?('@') || File.file?(value)
        end

        def io_filename(io)
          return 'file' unless io.respond_to?(:path)
          path = io.path
          return 'file' if path.nil? || path.empty?
          File.basename(path.to_s)
        end

        # Renders a plain (non-file) form field value.
        def field_string(value)
          return value.pack('C*').force_encoding(Encoding::BINARY) if value.is_a?(Array)
          value.to_s
        end

        def build_http(uri)
          http = if @configuration.proxy
                   proxy_uri = URI.parse(@configuration.proxy)
                   Net::HTTP.new(uri.host, uri.port, proxy_uri.host, proxy_uri.port)
                 else
                   Net::HTTP.new(uri.host, uri.port)
                 end
          http.use_ssl = uri.scheme == 'https'
          http.open_timeout = @configuration.timeout
          http.read_timeout = @configuration.timeout
          http
        end
      end
    end
  end
end
