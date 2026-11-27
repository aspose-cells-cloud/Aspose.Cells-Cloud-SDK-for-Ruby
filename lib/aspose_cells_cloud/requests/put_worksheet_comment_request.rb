=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutWorksheetCommentRequest.rb">
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

  class PutWorksheetCommentRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :cell_name
    # @return [Comment]
    attr_accessor :comment
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :sheet_name
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(cell_name:, comment:, name:, sheet_name:, folder: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `cell_name` when calling `PutWorksheetCommentRequest.new`' if cell_name.nil?
      raise ArgumentError, 'Missing the required parameter `comment` when calling `PutWorksheetCommentRequest.new`' if comment.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `PutWorksheetCommentRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PutWorksheetCommentRequest.new`' if sheet_name.nil?
      @cell_name = cell_name
      @comment = comment
      @name = name
      @sheet_name = sheet_name
      @folder = folder
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/comments/{cellName}'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path = path.gsub('{cellName}', encode_path_segment(@cell_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
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
      return nil if @comment.nil?
      if @comment.is_a?(Array)
        @comment.map { |item| item.respond_to?(:to_hash) ? item.to_hash : item }
      elsif @comment.respond_to?(:to_hash)
        @comment.to_hash
      else
        @comment
      end
    end

  end

end
