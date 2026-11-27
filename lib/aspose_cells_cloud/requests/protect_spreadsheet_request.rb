=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ProtectSpreadsheetRequest.rb">
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

  class ProtectSpreadsheetRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :modify_password
    # @return [String]
    attr_accessor :password
    # @return [File]
    attr_accessor :spreadsheet
    # @return [String, nil when omitted]
    attr_accessor :out_path
    # @return [String, nil when omitted]
    attr_accessor :out_storage_name
    # @return [String, nil when omitted]
    attr_accessor :region

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(modify_password:, password:, spreadsheet:, out_path: nil, out_storage_name: nil, region: nil)
      raise ArgumentError, 'Missing the required parameter `modify_password` when calling `ProtectSpreadsheetRequest.new`' if modify_password.nil?
      raise ArgumentError, 'Missing the required parameter `password` when calling `ProtectSpreadsheetRequest.new`' if password.nil?
      raise ArgumentError, 'Missing the required parameter `spreadsheet` when calling `ProtectSpreadsheetRequest.new`' if spreadsheet.nil?
      @modify_password = modify_password
      @password = password
      @spreadsheet = spreadsheet
      @out_path = out_path
      @out_storage_name = out_storage_name
      @region = region
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v4.0/cells/protection/spreadsheet'
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['password'] = @password
      query['modifyPassword'] = @modify_password
      query['outPath'] = @out_path unless @out_path.nil?
      query['outStorageName'] = @out_storage_name unless @out_storage_name.nil?
      query['region'] = @region unless @region.nil?
      query
    end

    # @return [Hash] default headers for this operation
    def get_header_parameters
      {
        'Accept' => 'application/json',
        'Content-Type' => 'multipart/form-data',
      }
    end

    # @return [Hash] multipart form fields (paths, IO or FormFile values)
    def get_multipart_form
      form = {}
      form['file'] = @spreadsheet
      form
    end

  end

end
