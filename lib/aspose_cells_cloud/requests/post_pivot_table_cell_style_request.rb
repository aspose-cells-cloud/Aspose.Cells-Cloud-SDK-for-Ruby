=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostPivotTableCellStyleRequest.rb">
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

  class PostPivotTableCellStyleRequest < Aspose::Cells::Cloud::RequestOption
    # @return [Integer]
    attr_accessor :column
    # @return [String]
    attr_accessor :name
    # @return [Integer]
    attr_accessor :pivot_table_index
    # @return [Integer]
    attr_accessor :row
    # @return [String]
    attr_accessor :sheet_name
    # @return [Style]
    attr_accessor :style
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :need_re_calculate
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(column:, name:, pivot_table_index:, row:, sheet_name:, style:, folder: nil, need_re_calculate: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `column` when calling `PostPivotTableCellStyleRequest.new`' if column.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `PostPivotTableCellStyleRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `pivot_table_index` when calling `PostPivotTableCellStyleRequest.new`' if pivot_table_index.nil?
      raise ArgumentError, 'Missing the required parameter `row` when calling `PostPivotTableCellStyleRequest.new`' if row.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PostPivotTableCellStyleRequest.new`' if sheet_name.nil?
      raise ArgumentError, 'Missing the required parameter `style` when calling `PostPivotTableCellStyleRequest.new`' if style.nil?
      @column = column
      @name = name
      @pivot_table_index = pivot_table_index
      @row = row
      @sheet_name = sheet_name
      @style = style
      @folder = folder
      @need_re_calculate = need_re_calculate
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'POST'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/pivottables/{pivotTableIndex}/Format'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path = path.gsub('{pivotTableIndex}', encode_path_segment(@pivot_table_index))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['column'] = @column
      query['row'] = @row
      query['needReCalculate'] = @need_re_calculate unless @need_re_calculate.nil?
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
      return nil if @style.nil?
      if @style.is_a?(Array)
        @style.map { |item| item.respond_to?(:to_hash) ? item.to_hash : item }
      elsif @style.respond_to?(:to_hash)
        @style.to_hash
      else
        @style
      end
    end

  end

end
