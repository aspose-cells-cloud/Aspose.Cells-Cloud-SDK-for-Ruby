=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostAutofitWorkbookRowsRequest.rb">
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

  class PostAutofitWorkbookRowsRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :name
    # @return [Integer, nil when omitted]
    attr_accessor :end_row
    # @return [Integer, nil when omitted]
    attr_accessor :first_column
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [Integer, nil when omitted]
    attr_accessor :last_column
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :only_auto
    # @return [Integer, nil when omitted]
    attr_accessor :start_row
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(name:, end_row: nil, first_column: nil, folder: nil, last_column: nil, only_auto: nil, start_row: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `name` when calling `PostAutofitWorkbookRowsRequest.new`' if name.nil?
      @name = name
      @end_row = end_row
      @first_column = first_column
      @folder = folder
      @last_column = last_column
      @only_auto = only_auto
      @start_row = start_row
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'POST'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/autofitrows'
      path = path.gsub('{name}', encode_path_segment(@name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['startRow'] = @start_row unless @start_row.nil?
      query['endRow'] = @end_row unless @end_row.nil?
      query['onlyAuto'] = @only_auto unless @only_auto.nil?
      query['folder'] = @folder unless @folder.nil?
      query['storageName'] = @storage_name unless @storage_name.nil?
      query['firstColumn'] = @first_column unless @first_column.nil?
      query['lastColumn'] = @last_column unless @last_column.nil?
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
