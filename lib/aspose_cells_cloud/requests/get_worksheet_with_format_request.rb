=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="GetWorksheetWithFormatRequest.rb">
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

  class GetWorksheetWithFormatRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :sheet_name
    # @return [String, nil when omitted]
    attr_accessor :area
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [String, nil when omitted]
    attr_accessor :format
    # @return [Integer, nil when omitted]
    attr_accessor :horizontal_resolution
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :one_page_per_sheet
    # @return [Integer, nil when omitted]
    attr_accessor :page_index
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :print_headings
    # @return [String, nil when omitted]
    attr_accessor :storage_name
    # @return [Integer, nil when omitted]
    attr_accessor :vertical_resolution

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(name:, sheet_name:, area: nil, folder: nil, format: nil, horizontal_resolution: nil, one_page_per_sheet: nil, page_index: nil, print_headings: nil, storage_name: nil, vertical_resolution: nil)
      raise ArgumentError, 'Missing the required parameter `name` when calling `GetWorksheetWithFormatRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `GetWorksheetWithFormatRequest.new`' if sheet_name.nil?
      @name = name
      @sheet_name = sheet_name
      @area = area
      @folder = folder
      @format = format
      @horizontal_resolution = horizontal_resolution
      @one_page_per_sheet = one_page_per_sheet
      @page_index = page_index
      @print_headings = print_headings
      @storage_name = storage_name
      @vertical_resolution = vertical_resolution
    end

    # @return [String] HTTP method for this operation
    def get_method
      'GET'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['format'] = @format unless @format.nil?
      query['verticalResolution'] = @vertical_resolution unless @vertical_resolution.nil?
      query['horizontalResolution'] = @horizontal_resolution unless @horizontal_resolution.nil?
      query['area'] = @area unless @area.nil?
      query['pageIndex'] = @page_index unless @page_index.nil?
      query['onePagePerSheet'] = @one_page_per_sheet unless @one_page_per_sheet.nil?
      query['printHeadings'] = @print_headings unless @print_headings.nil?
      query['folder'] = @folder unless @folder.nil?
      query['storageName'] = @storage_name unless @storage_name.nil?
      query
    end

    # @return [Hash] default headers for this operation
    def get_header_parameters
      {
        'Accept' => 'application/json',
        'Content-Type' => 'application/json',
      }
    end

  end

end
