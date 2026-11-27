=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutWorksheetColorFilterRequest.rb">
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

  class PutWorksheetColorFilterRequest < Aspose::Cells::Cloud::RequestOption
    # @return [ColorFilterRequest]
    attr_accessor :color_filter
    # @return [Integer]
    attr_accessor :field_index
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
    def initialize(color_filter:, field_index:, name:, range:, sheet_name:, folder: nil, match_blanks: nil, refresh: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `color_filter` when calling `PutWorksheetColorFilterRequest.new`' if color_filter.nil?
      raise ArgumentError, 'Missing the required parameter `field_index` when calling `PutWorksheetColorFilterRequest.new`' if field_index.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `PutWorksheetColorFilterRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `range` when calling `PutWorksheetColorFilterRequest.new`' if range.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PutWorksheetColorFilterRequest.new`' if sheet_name.nil?
      @color_filter = color_filter
      @field_index = field_index
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
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/autoFilter/colorFilter'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['range'] = @range
      query['fieldIndex'] = @field_index
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

    # @return [Hash, Array, nil] JSON body (models are converted via to_hash)
    def get_json_body
      return nil if @color_filter.nil?
      if @color_filter.is_a?(Array)
        @color_filter.map { |item| item.respond_to?(:to_hash) ? item.to_hash : item }
      elsif @color_filter.respond_to?(:to_hash)
        @color_filter.to_hash
      else
        @color_filter
      end
    end

  end

end
