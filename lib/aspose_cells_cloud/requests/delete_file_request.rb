=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="DeleteFileRequest.rb">
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

  class DeleteFileRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :path
    # @return [String, nil when omitted]
    attr_accessor :storage_name
    # @return [String, nil when omitted]
    attr_accessor :version_id

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(path:, storage_name: nil, version_id: nil)
      raise ArgumentError, 'Missing the required parameter `path` when calling `DeleteFileRequest.new`' if path.nil?
      @path = path
      @storage_name = storage_name
      @version_id = version_id
    end

    # @return [String] HTTP method for this operation
    def get_method
      'DELETE'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v4.0/cells/storage/file/{path}'
      path = path.gsub('{path}', encode_path_segment(@path))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['storageName'] = @storage_name unless @storage_name.nil?
      query['versionId'] = @version_id unless @version_id.nil?
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
