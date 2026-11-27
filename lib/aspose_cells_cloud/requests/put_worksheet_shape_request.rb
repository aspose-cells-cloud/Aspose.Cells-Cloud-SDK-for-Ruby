=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutWorksheetShapeRequest.rb">
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

  class PutWorksheetShapeRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :sheet_name
    # @return [String, nil when omitted]
    attr_accessor :drawing_type
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [Integer, nil when omitted]
    attr_accessor :height
    # @return [Integer, nil when omitted]
    attr_accessor :left
    # @return [Shape, nil when omitted]
    attr_accessor :shape_dto
    # @return [String, nil when omitted]
    attr_accessor :storage_name
    # @return [Integer, nil when omitted]
    attr_accessor :top
    # @return [Integer, nil when omitted]
    attr_accessor :upper_left_column
    # @return [Integer, nil when omitted]
    attr_accessor :upper_left_row
    # @return [Integer, nil when omitted]
    attr_accessor :width

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(name:, sheet_name:, drawing_type: nil, folder: nil, height: nil, left: nil, shape_dto: nil, storage_name: nil, top: nil, upper_left_column: nil, upper_left_row: nil, width: nil)
      raise ArgumentError, 'Missing the required parameter `name` when calling `PutWorksheetShapeRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PutWorksheetShapeRequest.new`' if sheet_name.nil?
      @name = name
      @sheet_name = sheet_name
      @drawing_type = drawing_type
      @folder = folder
      @height = height
      @left = left
      @shape_dto = shape_dto
      @storage_name = storage_name
      @top = top
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
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/shapes'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['DrawingType'] = @drawing_type unless @drawing_type.nil?
      query['upperLeftRow'] = @upper_left_row unless @upper_left_row.nil?
      query['upperLeftColumn'] = @upper_left_column unless @upper_left_column.nil?
      query['top'] = @top unless @top.nil?
      query['left'] = @left unless @left.nil?
      query['width'] = @width unless @width.nil?
      query['height'] = @height unless @height.nil?
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

    # @return [Hash, Array, nil] JSON body (models are converted via to_hash)
    def get_json_body
      return nil if @shape_dto.nil?
      if @shape_dto.is_a?(Array)
        @shape_dto.map { |item| item.respond_to?(:to_hash) ? item.to_hash : item }
      elsif @shape_dto.respond_to?(:to_hash)
        @shape_dto.to_hash
      else
        @shape_dto
      end
    end

  end

end
