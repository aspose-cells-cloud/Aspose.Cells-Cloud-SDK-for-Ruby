=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="DeleteWorksheetColumnsRequest.rb">
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

  class DeleteWorksheetColumnsRequest < Aspose::Cells::Cloud::RequestOption
    # @return [Integer]
    attr_accessor :column_index
    # @return [Integer]
    attr_accessor :columns
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :sheet_name
    # @return [BOOLEAN]
    attr_accessor :update_reference
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(column_index:, columns:, name:, sheet_name:, update_reference:, folder: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `column_index` when calling `DeleteWorksheetColumnsRequest.new`' if column_index.nil?
      raise ArgumentError, 'Missing the required parameter `columns` when calling `DeleteWorksheetColumnsRequest.new`' if columns.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `DeleteWorksheetColumnsRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `DeleteWorksheetColumnsRequest.new`' if sheet_name.nil?
      raise ArgumentError, 'Missing the required parameter `update_reference` when calling `DeleteWorksheetColumnsRequest.new`' if update_reference.nil?
      @column_index = column_index
      @columns = columns
      @name = name
      @sheet_name = sheet_name
      @update_reference = update_reference
      @folder = folder
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'DELETE'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/cells/columns/{columnIndex}'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path = path.gsub('{columnIndex}', encode_path_segment(@column_index))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['columns'] = @columns
      query['updateReference'] = @update_reference
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
