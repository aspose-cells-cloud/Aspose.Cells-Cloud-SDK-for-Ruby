# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="sdk_error.rb">
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
      # Raised whenever an HTTP request cannot be completed or the server rejects a request
      # in a way the SDK cannot recover from. Subclasses StandardError so callers can
      # `rescue Aspose::Cells::Cloud::SDKError`.
      class SDKError < StandardError
        # HTTP status code (or nil for transport-level failures).
        attr_reader :code
        # Raw response body captured when the error is server-sourced.
        attr_reader :response_body
        # Response headers captured when the error is server-sourced.
        attr_reader :response_headers

        def initialize(message = 'Aspose.Cells Cloud SDK error', code: nil,
                       response_body: nil, response_headers: nil)
          @code = code
          @response_body = response_body
          @response_headers = response_headers
          super(message)
        end
      end
    end
  end
end
