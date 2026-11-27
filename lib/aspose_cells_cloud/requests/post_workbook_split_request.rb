=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostWorkbookSplitRequest.rb">
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

  class PostWorkbookSplitRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :name
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [String, nil when omitted]
    attr_accessor :format
    # @return [Integer, nil when omitted]
    attr_accessor :from
    # @return [Integer, nil when omitted]
    attr_accessor :horizontal_resolution
    # @return [String, nil when omitted]
    attr_accessor :out_folder
    # @return [String, nil when omitted]
    attr_accessor :out_storage_name
    # @return [String, nil when omitted]
    attr_accessor :split_name_rule
    # @return [String, nil when omitted]
    attr_accessor :storage_name
    # @return [Integer, nil when omitted]
    attr_accessor :to
    # @return [Integer, nil when omitted]
    attr_accessor :vertical_resolution

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(name:, folder: nil, format: nil, from: nil, horizontal_resolution: nil, out_folder: nil, out_storage_name: nil, split_name_rule: nil, storage_name: nil, to: nil, vertical_resolution: nil)
      raise ArgumentError, 'Missing the required parameter `name` when calling `PostWorkbookSplitRequest.new`' if name.nil?
      @name = name
      @folder = folder
      @format = format
      @from = from
      @horizontal_resolution = horizontal_resolution
      @out_folder = out_folder
      @out_storage_name = out_storage_name
      @split_name_rule = split_name_rule
      @storage_name = storage_name
      @to = to
      @vertical_resolution = vertical_resolution
    end

    # @return [String] HTTP method for this operation
    def get_method
      'POST'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/split'
      path = path.gsub('{name}', encode_path_segment(@name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['format'] = @format unless @format.nil?
      query['outFolder'] = @out_folder unless @out_folder.nil?
      query['from'] = @from unless @from.nil?
      query['to'] = @to unless @to.nil?
      query['horizontalResolution'] = @horizontal_resolution unless @horizontal_resolution.nil?
      query['verticalResolution'] = @vertical_resolution unless @vertical_resolution.nil?
      query['splitNameRule'] = @split_name_rule unless @split_name_rule.nil?
      query['folder'] = @folder unless @folder.nil?
      query['storageName'] = @storage_name unless @storage_name.nil?
      query['outStorageName'] = @out_storage_name unless @out_storage_name.nil?
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
