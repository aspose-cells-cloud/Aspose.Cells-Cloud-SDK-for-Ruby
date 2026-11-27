=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostCopyCellIntoCellRequest.rb">
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

  class PostCopyCellIntoCellRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :dest_cell_name
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :sheet_name
    # @return [String]
    attr_accessor :worksheet
    # @return [String, nil when omitted]
    attr_accessor :cellname
    # @return [Integer, nil when omitted]
    attr_accessor :column
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [Integer, nil when omitted]
    attr_accessor :row
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(dest_cell_name:, name:, sheet_name:, worksheet:, cellname: nil, column: nil, folder: nil, row: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `dest_cell_name` when calling `PostCopyCellIntoCellRequest.new`' if dest_cell_name.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `PostCopyCellIntoCellRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PostCopyCellIntoCellRequest.new`' if sheet_name.nil?
      raise ArgumentError, 'Missing the required parameter `worksheet` when calling `PostCopyCellIntoCellRequest.new`' if worksheet.nil?
      @dest_cell_name = dest_cell_name
      @name = name
      @sheet_name = sheet_name
      @worksheet = worksheet
      @cellname = cellname
      @column = column
      @folder = folder
      @row = row
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'POST'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/cells/{destCellName}/copy'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path = path.gsub('{destCellName}', encode_path_segment(@dest_cell_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['worksheet'] = @worksheet
      query['cellname'] = @cellname unless @cellname.nil?
      query['row'] = @row unless @row.nil?
      query['column'] = @column unless @column.nil?
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
