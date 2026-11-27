# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="rich_response.rb">
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

require 'json'

module Aspose
  module Cells
    module Cloud
      # Wraps an HTTP response: status code, headers, and a raw (possibly binary) body.
      class RichResponse
        # @return [Integer] HTTP status code.
        attr_reader :status_code
        # @return [Hash] response headers.
        attr_reader :headers
        # @return [String, nil] raw response body (binary-safe).
        attr_reader :body

        def initialize(status_code, headers = {}, body = nil)
          @status_code = status_code
          @headers = headers || {}
          @body = body
        end

        # @return [String] body decoded as UTF-8 (binary contents are not valid UTF-8).
        def to_s
          return '' if @body.nil?
          @body.dup.force_encoding(Encoding::UTF_8).scrub
        end

        # @return [Boolean] whether the HTTP status is a success (2xx).
        def success?
          (200..299).cover?(status_code)
        end

        # @return [String, nil] body as an `Encoding::BINARY` String.
        def to_bytes
          return nil if @body.nil?
          @body.dup.force_encoding(Encoding::BINARY)
        end

        # Parses the body as JSON.
        #
        # @param klass [Class, nil] when given, hydrate a model instance from the parsed
        #   JSON (top-level keys are snake_cased into keyword arguments).
        # @return [Object] the parsed JSON, or a hydrated model when +klass+ is supplied.
        def get_json(klass = nil)
          data = JSON.parse(to_s)
          return data unless klass
          hydrate(klass, data)
        end

        private

        def hydrate(klass, data)
          return data unless data.is_a?(Hash)
          kwargs = data.each_with_object({}) do |(key, value), acc|
            acc[snake_case(key).to_sym] = value
          end
          klass.new(**kwargs)
        end

        def snake_case(name)
          name.to_s
              .gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
              .gsub(/([a-z0-9])([A-Z])/, '\1_\2')
              .tr('-', '_')
              .downcase
        end
      end
    end
  end
end
