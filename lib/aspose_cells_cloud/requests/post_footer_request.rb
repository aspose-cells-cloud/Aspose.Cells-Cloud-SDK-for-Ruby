=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostFooterRequest.rb">
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

  class PostFooterRequest < Aspose::Cells::Cloud::RequestOption
    # @return [BOOLEAN]
    attr_accessor :is_first_page
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :script
    # @return [Integer]
    attr_accessor :section
    # @return [String]
    attr_accessor :sheet_name
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(is_first_page:, name:, script:, section:, sheet_name:, folder: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `is_first_page` when calling `PostFooterRequest.new`' if is_first_page.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `PostFooterRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `script` when calling `PostFooterRequest.new`' if script.nil?
      raise ArgumentError, 'Missing the required parameter `section` when calling `PostFooterRequest.new`' if section.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PostFooterRequest.new`' if sheet_name.nil?
      @is_first_page = is_first_page
      @name = name
      @script = script
      @section = section
      @sheet_name = sheet_name
      @folder = folder
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'POST'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/pagesetup/footer'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['section'] = @section
      query['script'] = @script
      query['isFirstPage'] = @is_first_page
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
