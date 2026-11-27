=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutWorksheetOleObjectRequest.rb">
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

  class PutWorksheetOleObjectRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :sheet_name
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [Integer, nil when omitted]
    attr_accessor :height
    # @return [String, nil when omitted]
    attr_accessor :image_file
    # @return [String, nil when omitted]
    attr_accessor :ole_file
    # @return [String, nil when omitted]
    attr_accessor :storage_name
    # @return [Integer, nil when omitted]
    attr_accessor :upper_left_column
    # @return [Integer, nil when omitted]
    attr_accessor :upper_left_row
    # @return [Integer, nil when omitted]
    attr_accessor :width

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(name:, sheet_name:, folder: nil, height: nil, image_file: nil, ole_file: nil, storage_name: nil, upper_left_column: nil, upper_left_row: nil, width: nil)
      raise ArgumentError, 'Missing the required parameter `name` when calling `PutWorksheetOleObjectRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PutWorksheetOleObjectRequest.new`' if sheet_name.nil?
      @name = name
      @sheet_name = sheet_name
      @folder = folder
      @height = height
      @image_file = image_file
      @ole_file = ole_file
      @storage_name = storage_name
      @upper_left_column = upper_left_column
      @upper_left_row = upper_left_row
      @width = width
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/oleobjects'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['upperLeftRow'] = @upper_left_row unless @upper_left_row.nil?
      query['upperLeftColumn'] = @upper_left_column unless @upper_left_column.nil?
      query['height'] = @height unless @height.nil?
      query['width'] = @width unless @width.nil?
      query['oleFile'] = @ole_file unless @ole_file.nil?
      query['imageFile'] = @image_file unless @image_file.nil?
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
