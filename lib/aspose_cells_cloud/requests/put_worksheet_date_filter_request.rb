=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutWorksheetDateFilterRequest.rb">
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

  class PutWorksheetDateFilterRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :date_time_grouping_type
    # @return [Integer]
    attr_accessor :field_index
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :range
    # @return [String]
    attr_accessor :sheet_name
    # @return [Integer, nil when omitted]
    attr_accessor :day
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [Integer, nil when omitted]
    attr_accessor :hour
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :match_blanks
    # @return [Integer, nil when omitted]
    attr_accessor :minute
    # @return [Integer, nil when omitted]
    attr_accessor :month
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :refresh
    # @return [Integer, nil when omitted]
    attr_accessor :second
    # @return [String, nil when omitted]
    attr_accessor :storage_name
    # @return [Integer, nil when omitted]
    attr_accessor :year

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(date_time_grouping_type:, field_index:, name:, range:, sheet_name:, day: nil, folder: nil, hour: nil, match_blanks: nil, minute: nil, month: nil, refresh: nil, second: nil, storage_name: nil, year: nil)
      raise ArgumentError, 'Missing the required parameter `date_time_grouping_type` when calling `PutWorksheetDateFilterRequest.new`' if date_time_grouping_type.nil?
      raise ArgumentError, 'Missing the required parameter `field_index` when calling `PutWorksheetDateFilterRequest.new`' if field_index.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `PutWorksheetDateFilterRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `range` when calling `PutWorksheetDateFilterRequest.new`' if range.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PutWorksheetDateFilterRequest.new`' if sheet_name.nil?
      @date_time_grouping_type = date_time_grouping_type
      @field_index = field_index
      @name = name
      @range = range
      @sheet_name = sheet_name
      @day = day
      @folder = folder
      @hour = hour
      @match_blanks = match_blanks
      @minute = minute
      @month = month
      @refresh = refresh
      @second = second
      @storage_name = storage_name
      @year = year
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/autoFilter/dateFilter'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['range'] = @range
      query['fieldIndex'] = @field_index
      query['dateTimeGroupingType'] = @date_time_grouping_type
      query['year'] = @year unless @year.nil?
      query['month'] = @month unless @month.nil?
      query['day'] = @day unless @day.nil?
      query['hour'] = @hour unless @hour.nil?
      query['minute'] = @minute unless @minute.nil?
      query['second'] = @second unless @second.nil?
      query['matchBlanks'] = @match_blanks unless @match_blanks.nil?
      query['refresh'] = @refresh unless @refresh.nil?
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
