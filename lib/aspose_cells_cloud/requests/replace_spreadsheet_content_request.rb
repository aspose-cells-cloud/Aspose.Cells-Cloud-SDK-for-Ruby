=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ReplaceSpreadsheetContentRequest.rb">
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

  class ReplaceSpreadsheetContentRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :replace_text
    # @return [String]
    attr_accessor :search_text
    # @return [File]
    attr_accessor :spreadsheet
    # @return [String, nil when omitted]
    attr_accessor :cell_area
    # @return [String, nil when omitted]
    attr_accessor :password
    # @return [String, nil when omitted]
    attr_accessor :region
    # @return [String, nil when omitted]
    attr_accessor :worksheet

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(replace_text:, search_text:, spreadsheet:, cell_area: nil, password: nil, region: nil, worksheet: nil)
      raise ArgumentError, 'Missing the required parameter `replace_text` when calling `ReplaceSpreadsheetContentRequest.new`' if replace_text.nil?
      raise ArgumentError, 'Missing the required parameter `search_text` when calling `ReplaceSpreadsheetContentRequest.new`' if search_text.nil?
      raise ArgumentError, 'Missing the required parameter `spreadsheet` when calling `ReplaceSpreadsheetContentRequest.new`' if spreadsheet.nil?
      @replace_text = replace_text
      @search_text = search_text
      @spreadsheet = spreadsheet
      @cell_area = cell_area
      @password = password
      @region = region
      @worksheet = worksheet
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v4.0/cells/replace/content'
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['searchText'] = @search_text
      query['replaceText'] = @replace_text
      query['worksheet'] = @worksheet unless @worksheet.nil?
      query['cellArea'] = @cell_area unless @cell_area.nil?
      query['region'] = @region unless @region.nil?
      query['password'] = @password unless @password.nil?
      query
    end

    # @return [Hash] default headers for this operation
    def get_header_parameters
      {
        'Accept' => 'application/json',
        'Content-Type' => 'multipart/form-data',
      }
    end

    # @return [Hash] multipart form fields (paths, IO or FormFile values)
    def get_multipart_form
      form = {}
      form['file'] = @spreadsheet
      form
    end

  end

end
