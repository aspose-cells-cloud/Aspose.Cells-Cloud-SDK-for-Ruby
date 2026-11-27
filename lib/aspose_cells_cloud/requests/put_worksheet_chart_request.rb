=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutWorksheetChartRequest.rb">
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

  class PutWorksheetChartRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :chart_type
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :sheet_name
    # @return [String, nil when omitted]
    attr_accessor :area
    # @return [String, nil when omitted]
    attr_accessor :category_data
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :data_labels
    # @return [String, nil when omitted]
    attr_accessor :data_labels_position
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :is_auto_get_serial_name
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :is_vertical
    # @return [Integer, nil when omitted]
    attr_accessor :lower_right_column
    # @return [Integer, nil when omitted]
    attr_accessor :lower_right_row
    # @return [String, nil when omitted]
    attr_accessor :pivot_table_name
    # @return [String, nil when omitted]
    attr_accessor :pivot_table_sheet
    # @return [String, nil when omitted]
    attr_accessor :storage_name
    # @return [String, nil when omitted]
    attr_accessor :title
    # @return [Integer, nil when omitted]
    attr_accessor :upper_left_column
    # @return [Integer, nil when omitted]
    attr_accessor :upper_left_row

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(chart_type:, name:, sheet_name:, area: nil, category_data: nil, data_labels: nil, data_labels_position: nil, folder: nil, is_auto_get_serial_name: nil, is_vertical: nil, lower_right_column: nil, lower_right_row: nil, pivot_table_name: nil, pivot_table_sheet: nil, storage_name: nil, title: nil, upper_left_column: nil, upper_left_row: nil)
      raise ArgumentError, 'Missing the required parameter `chart_type` when calling `PutWorksheetChartRequest.new`' if chart_type.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `PutWorksheetChartRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PutWorksheetChartRequest.new`' if sheet_name.nil?
      @chart_type = chart_type
      @name = name
      @sheet_name = sheet_name
      @area = area
      @category_data = category_data
      @data_labels = data_labels
      @data_labels_position = data_labels_position
      @folder = folder
      @is_auto_get_serial_name = is_auto_get_serial_name
      @is_vertical = is_vertical
      @lower_right_column = lower_right_column
      @lower_right_row = lower_right_row
      @pivot_table_name = pivot_table_name
      @pivot_table_sheet = pivot_table_sheet
      @storage_name = storage_name
      @title = title
      @upper_left_column = upper_left_column
      @upper_left_row = upper_left_row
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/charts'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['chartType'] = @chart_type
      query['upperLeftRow'] = @upper_left_row unless @upper_left_row.nil?
      query['upperLeftColumn'] = @upper_left_column unless @upper_left_column.nil?
      query['lowerRightRow'] = @lower_right_row unless @lower_right_row.nil?
      query['lowerRightColumn'] = @lower_right_column unless @lower_right_column.nil?
      query['area'] = @area unless @area.nil?
      query['isVertical'] = @is_vertical unless @is_vertical.nil?
      query['categoryData'] = @category_data unless @category_data.nil?
      query['isAutoGetSerialName'] = @is_auto_get_serial_name unless @is_auto_get_serial_name.nil?
      query['title'] = @title unless @title.nil?
      query['folder'] = @folder unless @folder.nil?
      query['dataLabels'] = @data_labels unless @data_labels.nil?
      query['dataLabelsPosition'] = @data_labels_position unless @data_labels_position.nil?
      query['pivotTableSheet'] = @pivot_table_sheet unless @pivot_table_sheet.nil?
      query['pivotTableName'] = @pivot_table_name unless @pivot_table_name.nil?
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
