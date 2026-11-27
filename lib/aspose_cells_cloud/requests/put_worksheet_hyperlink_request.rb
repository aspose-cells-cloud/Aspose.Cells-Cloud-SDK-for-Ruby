=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutWorksheetHyperlinkRequest.rb">
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

  class PutWorksheetHyperlinkRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :address
    # @return [Integer]
    attr_accessor :first_column
    # @return [Integer]
    attr_accessor :first_row
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :sheet_name
    # @return [Integer]
    attr_accessor :total_columns
    # @return [Integer]
    attr_accessor :total_rows
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(address:, first_column:, first_row:, name:, sheet_name:, total_columns:, total_rows:, folder: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `address` when calling `PutWorksheetHyperlinkRequest.new`' if address.nil?
      raise ArgumentError, 'Missing the required parameter `first_column` when calling `PutWorksheetHyperlinkRequest.new`' if first_column.nil?
      raise ArgumentError, 'Missing the required parameter `first_row` when calling `PutWorksheetHyperlinkRequest.new`' if first_row.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `PutWorksheetHyperlinkRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PutWorksheetHyperlinkRequest.new`' if sheet_name.nil?
      raise ArgumentError, 'Missing the required parameter `total_columns` when calling `PutWorksheetHyperlinkRequest.new`' if total_columns.nil?
      raise ArgumentError, 'Missing the required parameter `total_rows` when calling `PutWorksheetHyperlinkRequest.new`' if total_rows.nil?
      @address = address
      @first_column = first_column
      @first_row = first_row
      @name = name
      @sheet_name = sheet_name
      @total_columns = total_columns
      @total_rows = total_rows
      @folder = folder
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/hyperlinks'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['firstRow'] = @first_row
      query['firstColumn'] = @first_column
      query['totalRows'] = @total_rows
      query['totalColumns'] = @total_columns
      query['address'] = @address
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
