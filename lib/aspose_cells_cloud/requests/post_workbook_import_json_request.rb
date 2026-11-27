=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostWorkbookImportJsonRequest.rb">
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

  class PostWorkbookImportJsonRequest < Aspose::Cells::Cloud::RequestOption
    # @return [ImportJsonRequest]
    attr_accessor :import_json_request
    # @return [String]
    attr_accessor :name
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :check_excel_restriction
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [String, nil when omitted]
    attr_accessor :out_path
    # @return [String, nil when omitted]
    attr_accessor :out_storage_name
    # @return [String, nil when omitted]
    attr_accessor :password
    # @return [String, nil when omitted]
    attr_accessor :region
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(import_json_request:, name:, check_excel_restriction: nil, folder: nil, out_path: nil, out_storage_name: nil, password: nil, region: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `import_json_request` when calling `PostWorkbookImportJsonRequest.new`' if import_json_request.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `PostWorkbookImportJsonRequest.new`' if name.nil?
      @import_json_request = import_json_request
      @name = name
      @check_excel_restriction = check_excel_restriction
      @folder = folder
      @out_path = out_path
      @out_storage_name = out_storage_name
      @password = password
      @region = region
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'POST'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/importjson'
      path = path.gsub('{name}', encode_path_segment(@name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['password'] = @password unless @password.nil?
      query['folder'] = @folder unless @folder.nil?
      query['storageName'] = @storage_name unless @storage_name.nil?
      query['outPath'] = @out_path unless @out_path.nil?
      query['outStorageName'] = @out_storage_name unless @out_storage_name.nil?
      query['checkExcelRestriction'] = @check_excel_restriction unless @check_excel_restriction.nil?
      query['region'] = @region unless @region.nil?
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
      return nil if @import_json_request.nil?
      if @import_json_request.is_a?(Array)
        @import_json_request.map { |item| item.respond_to?(:to_hash) ? item.to_hash : item }
      elsif @import_json_request.respond_to?(:to_hash)
        @import_json_request.to_hash
      else
        @import_json_request
      end
    end

  end

end
