=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="SplitTableRequest.rb">
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

  class SplitTableRequest < Aspose::Cells::Cloud::RequestOption
    # @return [BOOLEAN]
    attr_accessor :save_split_column
    # @return [String]
    attr_accessor :split_column_name
    # @return [Integer]
    attr_accessor :split_row_number
    # @return [File]
    attr_accessor :spreadsheet
    # @return [String]
    attr_accessor :table_name
    # @return [BOOLEAN]
    attr_accessor :to_multiple_files
    # @return [BOOLEAN]
    attr_accessor :to_new_workbook
    # @return [String]
    attr_accessor :worksheet
    # @return [String, nil when omitted]
    attr_accessor :fonts_location
    # @return [String, nil when omitted]
    attr_accessor :out_path
    # @return [String, nil when omitted]
    attr_accessor :out_storage_name
    # @return [String, nil when omitted]
    attr_accessor :password
    # @return [String, nil when omitted]
    attr_accessor :region

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(save_split_column:, split_column_name:, split_row_number:, spreadsheet:, table_name:, to_multiple_files:, to_new_workbook:, worksheet:, fonts_location: nil, out_path: nil, out_storage_name: nil, password: nil, region: nil)
      raise ArgumentError, 'Missing the required parameter `save_split_column` when calling `SplitTableRequest.new`' if save_split_column.nil?
      raise ArgumentError, 'Missing the required parameter `split_column_name` when calling `SplitTableRequest.new`' if split_column_name.nil?
      raise ArgumentError, 'Missing the required parameter `split_row_number` when calling `SplitTableRequest.new`' if split_row_number.nil?
      raise ArgumentError, 'Missing the required parameter `spreadsheet` when calling `SplitTableRequest.new`' if spreadsheet.nil?
      raise ArgumentError, 'Missing the required parameter `table_name` when calling `SplitTableRequest.new`' if table_name.nil?
      raise ArgumentError, 'Missing the required parameter `to_multiple_files` when calling `SplitTableRequest.new`' if to_multiple_files.nil?
      raise ArgumentError, 'Missing the required parameter `to_new_workbook` when calling `SplitTableRequest.new`' if to_new_workbook.nil?
      raise ArgumentError, 'Missing the required parameter `worksheet` when calling `SplitTableRequest.new`' if worksheet.nil?
      @save_split_column = save_split_column
      @split_column_name = split_column_name
      @split_row_number = split_row_number
      @spreadsheet = spreadsheet
      @table_name = table_name
      @to_multiple_files = to_multiple_files
      @to_new_workbook = to_new_workbook
      @worksheet = worksheet
      @fonts_location = fonts_location
      @out_path = out_path
      @out_storage_name = out_storage_name
      @password = password
      @region = region
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v4.0/cells/split/table'
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['worksheet'] = @worksheet
      query['tableName'] = @table_name
      query['splitColumnName'] = @split_column_name
      query['saveSplitColumn'] = @save_split_column
      query['splitRowNumber'] = @split_row_number
      query['toNewWorkbook'] = @to_new_workbook
      query['toMultipleFiles'] = @to_multiple_files
      query['outPath'] = @out_path unless @out_path.nil?
      query['outStorageName'] = @out_storage_name unless @out_storage_name.nil?
      query['fontsLocation'] = @fonts_location unless @fonts_location.nil?
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
