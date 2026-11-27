=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="MoveFolderRequest.rb">
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

  class MoveFolderRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :dest_path
    # @return [String]
    attr_accessor :src_path
    # @return [String, nil when omitted]
    attr_accessor :dest_storage_name
    # @return [String, nil when omitted]
    attr_accessor :src_storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(dest_path:, src_path:, dest_storage_name: nil, src_storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `dest_path` when calling `MoveFolderRequest.new`' if dest_path.nil?
      raise ArgumentError, 'Missing the required parameter `src_path` when calling `MoveFolderRequest.new`' if src_path.nil?
      @dest_path = dest_path
      @src_path = src_path
      @dest_storage_name = dest_storage_name
      @src_storage_name = src_storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v4.0/cells/storage/folder/move/{srcPath}'
      path = path.gsub('{srcPath}', encode_path_segment(@src_path))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['destPath'] = @dest_path
      query['srcStorageName'] = @src_storage_name unless @src_storage_name.nil?
      query['destStorageName'] = @dest_storage_name unless @dest_storage_name.nil?
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
