=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostGroupWorksheetRowsRequest.rb">
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

  class PostGroupWorksheetRowsRequest < Aspose::Cells::Cloud::RequestOption
    # @return [Integer]
    attr_accessor :first_index
    # @return [Integer]
    attr_accessor :last_index
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :sheet_name
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :hide
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(first_index:, last_index:, name:, sheet_name:, folder: nil, hide: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `first_index` when calling `PostGroupWorksheetRowsRequest.new`' if first_index.nil?
      raise ArgumentError, 'Missing the required parameter `last_index` when calling `PostGroupWorksheetRowsRequest.new`' if last_index.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `PostGroupWorksheetRowsRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PostGroupWorksheetRowsRequest.new`' if sheet_name.nil?
      @first_index = first_index
      @last_index = last_index
      @name = name
      @sheet_name = sheet_name
      @folder = folder
      @hide = hide
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'POST'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/cells/rows/group'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['firstIndex'] = @first_index
      query['lastIndex'] = @last_index
      query['hide'] = @hide unless @hide.nil?
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
