=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutWorksheetCustomFilterRequest.rb">
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

  class PutWorksheetCustomFilterRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :criteria1
    # @return [Integer]
    attr_accessor :field_index
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :operator_type1
    # @return [String]
    attr_accessor :range
    # @return [String]
    attr_accessor :sheet_name
    # @return [String, nil when omitted]
    attr_accessor :criteria2
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :is_and
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :match_blanks
    # @return [String, nil when omitted]
    attr_accessor :operator_type2
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :refresh
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(criteria1:, field_index:, name:, operator_type1:, range:, sheet_name:, criteria2: nil, folder: nil, is_and: nil, match_blanks: nil, operator_type2: nil, refresh: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `criteria1` when calling `PutWorksheetCustomFilterRequest.new`' if criteria1.nil?
      raise ArgumentError, 'Missing the required parameter `field_index` when calling `PutWorksheetCustomFilterRequest.new`' if field_index.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `PutWorksheetCustomFilterRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `operator_type1` when calling `PutWorksheetCustomFilterRequest.new`' if operator_type1.nil?
      raise ArgumentError, 'Missing the required parameter `range` when calling `PutWorksheetCustomFilterRequest.new`' if range.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PutWorksheetCustomFilterRequest.new`' if sheet_name.nil?
      @criteria1 = criteria1
      @field_index = field_index
      @name = name
      @operator_type1 = operator_type1
      @range = range
      @sheet_name = sheet_name
      @criteria2 = criteria2
      @folder = folder
      @is_and = is_and
      @match_blanks = match_blanks
      @operator_type2 = operator_type2
      @refresh = refresh
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/autoFilter/custom'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['range'] = @range
      query['fieldIndex'] = @field_index
      query['operatorType1'] = @operator_type1
      query['criteria1'] = @criteria1
      query['isAnd'] = @is_and unless @is_and.nil?
      query['operatorType2'] = @operator_type2 unless @operator_type2.nil?
      query['criteria2'] = @criteria2 unless @criteria2.nil?
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
