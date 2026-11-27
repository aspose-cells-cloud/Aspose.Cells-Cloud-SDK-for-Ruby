=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="RemoveCharactersInRemoteSpreadsheetRequest.rb">
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

  class RemoveCharactersInRemoteSpreadsheetRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :range
    # @return [String]
    attr_accessor :worksheet
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :case_sensitive
    # @return [String, nil when omitted]
    attr_accessor :character_sets
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [String, nil when omitted]
    attr_accessor :password
    # @return [String, nil when omitted]
    attr_accessor :region
    # @return [String, nil when omitted]
    attr_accessor :remove_custom_value
    # @return [String, nil when omitted]
    attr_accessor :remove_text_method
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(name:, range:, worksheet:, case_sensitive: nil, character_sets: nil, folder: nil, password: nil, region: nil, remove_custom_value: nil, remove_text_method: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `name` when calling `RemoveCharactersInRemoteSpreadsheetRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `range` when calling `RemoveCharactersInRemoteSpreadsheetRequest.new`' if range.nil?
      raise ArgumentError, 'Missing the required parameter `worksheet` when calling `RemoveCharactersInRemoteSpreadsheetRequest.new`' if worksheet.nil?
      @name = name
      @range = range
      @worksheet = worksheet
      @case_sensitive = case_sensitive
      @character_sets = character_sets
      @folder = folder
      @password = password
      @region = region
      @remove_custom_value = remove_custom_value
      @remove_text_method = remove_text_method
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v4.0/cells/{name}/worksheets/{worksheet}/range/{range}/content/remove/characters'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{worksheet}', encode_path_segment(@worksheet))
      path = path.gsub('{range}', encode_path_segment(@range))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['removeTextMethod'] = @remove_text_method unless @remove_text_method.nil?
      query['characterSets'] = @character_sets unless @character_sets.nil?
      query['removeCustomValue'] = @remove_custom_value unless @remove_custom_value.nil?
      query['caseSensitive'] = @case_sensitive unless @case_sensitive.nil?
      query['folder'] = @folder unless @folder.nil?
      query['storageName'] = @storage_name unless @storage_name.nil?
      query['region'] = @region unless @region.nil?
      query['password'] = @password unless @password.nil?
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
