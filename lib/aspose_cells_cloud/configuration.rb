# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="configuration.rb">
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

module Aspose
  module Cells
    module Cloud
      # Runtime configuration for the Aspose.Cells Cloud SDK.
      #
      # Every tunable value lives here and is reachable from AsposeCellsCloudClient, mirroring the
      # Go SDK's Configuration struct + functional-option behavior. Optional/defaulted values
      # default to sensible values; credentials have no default.
      class Configuration
        attr_accessor :client_id, :client_secret, :base_url, :timeout, :retries
        attr_accessor :auth_url, :api_version, :proxy
        attr_reader :header_parameters

        # @param client_id [String, nil] Aspose Cloud Client ID (no default).
        # @param client_secret [String, nil] Aspose Cloud Client Secret (no default).
        # @param base_url [String] base endpoint (without trailing slash, no version).
        # @param auth_url [String, nil] OAuth2 token endpoint; when set, overrides the
        #   version-derived `{base_url}/{api_version}/cells/connect/token`.
        # @param timeout [Integer] connection/read timeout in seconds.
        # @param retries [Integer] number of retries on transient failures.
        # @param api_version [String] API version (e.g. `v4.0` / `v3.0`); drives both the
        #   request paths and the OAuth2 token endpoint.
        def initialize(client_id: nil, client_secret: nil,
                       base_url: 'https://api.aspose.cloud',
                       auth_url: nil, timeout: 30, retries: 0,
                       api_version: 'v4.0', proxy: nil)
          @client_id = client_id
          @client_secret = client_secret
          @base_url = base_url
          @auth_url = auth_url
          @timeout = timeout
          @retries = retries
          @api_version = api_version
          @proxy = proxy
          @header_parameters = {}
        end

        # Adds or replaces a default header applied to every request.
        #
        # @param key [String] header name.
        # @param value [String] header value.
        def add_default_header(key, value)
          @header_parameters[key] = value
        end

        # Resolves the OAuth2 token endpoint from the API version (the v1.1-style `/oauth2/token`
        # flow is no longer supported). `api_version` `v4.0` → `{base_url}/v4.0/cells/connect/token`,
        # `v3.0` → `{base_url}/v3.0/cells/connect/token`. An explicit `auth_url` overrides this.
        #
        # @return [String] absolute token URL.
        def token_url
          return @auth_url if @auth_url
          "#{@base_url.sub(%r{/+\z}, '')}/#{@api_version}/cells/connect/token"
        end
      end
    end
  end
end
