=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutWorksheetIconFilterRequest.rb">
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

  class PutWorksheetIconFilterRequest < Aspose::Cells::Cloud::RequestOption
    # @return [Integer]
    attr_accessor :field_index
    # @return [Integer]
    attr_accessor :icon_id
    # @return [String]
    attr_accessor :icon_set_type
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :range
    # @return [String]
    attr_accessor :sheet_name
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :match_blanks
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :refresh
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(field_index:, icon_id:, icon_set_type:, name:, range:, sheet_name:, folder: nil, match_blanks: nil, refresh: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `field_index` when calling `PutWorksheetIconFilterRequest.new`' if field_index.nil?
      raise ArgumentError, 'Missing the required parameter `icon_id` when calling `PutWorksheetIconFilterRequest.new`' if icon_id.nil?
      raise ArgumentError, 'Missing the required parameter `icon_set_type` when calling `PutWorksheetIconFilterRequest.new`' if icon_set_type.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `PutWorksheetIconFilterRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `range` when calling `PutWorksheetIconFilterRequest.new`' if range.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PutWorksheetIconFilterRequest.new`' if sheet_name.nil?
      @field_index = field_index
      @icon_id = icon_id
      @icon_set_type = icon_set_type
      @name = name
      @range = range
      @sheet_name = sheet_name
      @folder = folder
      @match_blanks = match_blanks
      @refresh = refresh
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/autoFilter/iconFilter'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['range'] = @range
      query['fieldIndex'] = @field_index
      query['iconSetType'] = @icon_set_type
      query['iconId'] = @icon_id
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
