# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="request_adapter.rb">
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

require_relative 'request_option'

module AsposeCellsCloud
  # Delegates a generated request to the client's RequestOption contract
  # while adding the two things generated requests cannot express:
  #
  #   1. arbitrary extra query parameters (the generated clients only know
  #      the parameters declared in the specification);
  #   2. the correct multipart field names. Every generated
  #      `get_multipart_form` keys its files as `'file'` (a generator bug),
  #      and the import requests overwrite one another, so facades supply
  #      `{'Spreadsheet' => ...}` and `{'datafile' => ..., 'Spreadsheet' => ...}`.
  #
  # Generated request classes are left untouched.
  class RequestAdapter < Aspose::Cells::Cloud::RequestOption
    # @return [Object] the wrapped generated request.
    attr_reader :request
    # @return [Hash] query parameters merged on top of the generated ones.
    attr_reader :extra_query

    # @param request [Object] generated request object.
    # @param extra_query [Hash] additional query parameters.
    # @param multipart [Hash, nil] replacement multipart form, or nil to
    #   delegate to the generated request.
    def initialize(request, extra_query: {}, multipart: nil)
      @request = request
      @extra_query = extra_query || {}
      @multipart = multipart
    end

    # @return [String] HTTP verb.
    def get_method
      @request.get_method
    end

    # @return [String] versioned request path.
    def get_path
      @request.get_path
    end

    # @return [Hash] generated query parameters plus the extra ones.
    def get_query_parameters
      base = @request.get_query_parameters || {}
      return base if @extra_query.empty?

      base.merge(@extra_query)
    end

    # @return [Hash] header parameters.
    def get_header_parameters
      @request.get_header_parameters
    end

    # @return [Object, nil] JSON body.
    def get_json_body
      @request.get_json_body
    end

    # @return [Hash, nil] multipart form with the correct field names.
    def get_multipart_form
      return @multipart unless @multipart.nil?

      @request.get_multipart_form
    end
  end
end
