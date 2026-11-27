=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostConvertWorkbookRequest.rb">
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

require 'date'
require_relative '../request_option'

module AsposeCellsCloud

  class PostConvertWorkbookRequest < Aspose::Cells::Cloud::RequestOption
    # @return [ConvertWorkbookOptions]
    attr_accessor :convert_workbook_options
    # @return [String, nil when omitted]
    attr_accessor :fonts_location

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(convert_workbook_options:, fonts_location: nil)
      raise ArgumentError, 'Missing the required parameter `convert_workbook_options` when calling `PostConvertWorkbookRequest.new`' if convert_workbook_options.nil?
      @convert_workbook_options = convert_workbook_options
      @fonts_location = fonts_location
    end

    # @return [String] HTTP method for this operation
    def get_method
      'POST'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/convertWorkbook'
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['FontsLocation'] = @fonts_location unless @fonts_location.nil?
      query
    end

    # @return [Hash] default headers for this operation
    def get_header_parameters
      {
        'Accept' => 'application/json',
        'Content-Type' => 'application/json',
      }
    end

    # @return [Hash, Array, nil] JSON body (models are converted via to_hash)
    def get_json_body
      return nil if @convert_workbook_options.nil?
      if @convert_workbook_options.is_a?(Array)
        @convert_workbook_options.map { |item| item.respond_to?(:to_hash) ? item.to_hash : item }
      elsif @convert_workbook_options.respond_to?(:to_hash)
        @convert_workbook_options.to_hash
      else
        @convert_workbook_options
      end
    end

  end

end
