=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutWorksheetFormatConditionConditionRequest.rb">
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

  class PutWorksheetFormatConditionConditionRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :formula1
    # @return [String]
    attr_accessor :formula2
    # @return [Integer]
    attr_accessor :index
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :operator_type
    # @return [String]
    attr_accessor :sheet_name
    # @return [String]
    attr_accessor :type
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(formula1:, formula2:, index:, name:, operator_type:, sheet_name:, type:, folder: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `formula1` when calling `PutWorksheetFormatConditionConditionRequest.new`' if formula1.nil?
      raise ArgumentError, 'Missing the required parameter `formula2` when calling `PutWorksheetFormatConditionConditionRequest.new`' if formula2.nil?
      raise ArgumentError, 'Missing the required parameter `index` when calling `PutWorksheetFormatConditionConditionRequest.new`' if index.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `PutWorksheetFormatConditionConditionRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `operator_type` when calling `PutWorksheetFormatConditionConditionRequest.new`' if operator_type.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PutWorksheetFormatConditionConditionRequest.new`' if sheet_name.nil?
      raise ArgumentError, 'Missing the required parameter `type` when calling `PutWorksheetFormatConditionConditionRequest.new`' if type.nil?
      @formula1 = formula1
      @formula2 = formula2
      @index = index
      @name = name
      @operator_type = operator_type
      @sheet_name = sheet_name
      @type = type
      @folder = folder
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/conditionalFormattings/{index}/condition'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path = path.gsub('{index}', encode_path_segment(@index))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['type'] = @type
      query['operatorType'] = @operator_type
      query['formula1'] = @formula1
      query['formula2'] = @formula2
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
