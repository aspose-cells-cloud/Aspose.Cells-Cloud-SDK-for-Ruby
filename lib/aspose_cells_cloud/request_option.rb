# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="request_option.rb">
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

require 'uri'

module Aspose
  module Cells
    module Cloud
      # Abstract base class every request inherits from. Subclasses implement the six
      # introspection methods that AsposeCellsCloudClient consumes to execute an HTTP call.
      class RequestOption
        # Percent-encodes a URL path segment (RFC 3986), encoding spaces as `%20`.
        #
        # @param value [Object] the value to encode.
        # @return [String] the encoded path segment.
        def encode_path_segment(value)
          URI.encode_www_form_component(value.to_s).gsub('+', '%20')
        end

        # @return [String] the HTTP verb, uppercased: 'GET', 'POST', 'PUT' or 'DELETE'.
        def get_method
          raise NotImplementedError, "#{self.class} must implement #get_method"
        end

        # @return [String] the request path with every `{param}` placeholder already
        #   URL-encoded and substituted, and the API version prepended (e.g. `/v4.0/cells/...`).
        def get_path
          raise NotImplementedError, "#{self.class} must implement #get_path"
        end

        # @return [Hash] query-string parameters (required + present optional only).
        def get_query_parameters
          {}
        end

        # @return [Hash] header parameters (at minimum the relevant Content-Type).
        def get_header_parameters
          {}
        end

        # @return [Hash, String, nil] JSON body, or nil when the operation has none.
        def get_json_body
          nil
        end

        # @return [Hash, nil] multipart form fields (file uploads keyed by form field name).
        def get_multipart_form
          nil
        end
      end
    end
  end
end
