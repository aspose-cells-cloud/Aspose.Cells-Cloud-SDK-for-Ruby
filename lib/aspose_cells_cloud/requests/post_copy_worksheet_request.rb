=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostCopyWorksheetRequest.rb">
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

  class PostCopyWorksheetRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :name
    # @return [CopyOptions]
    attr_accessor :options
    # @return [String]
    attr_accessor :sheet_name
    # @return [String]
    attr_accessor :source_sheet
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [String, nil when omitted]
    attr_accessor :source_folder
    # @return [String, nil when omitted]
    attr_accessor :source_workbook
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(name:, options:, sheet_name:, source_sheet:, folder: nil, source_folder: nil, source_workbook: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `name` when calling `PostCopyWorksheetRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `options` when calling `PostCopyWorksheetRequest.new`' if options.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PostCopyWorksheetRequest.new`' if sheet_name.nil?
      raise ArgumentError, 'Missing the required parameter `source_sheet` when calling `PostCopyWorksheetRequest.new`' if source_sheet.nil?
      @name = name
      @options = options
      @sheet_name = sheet_name
      @source_sheet = source_sheet
      @folder = folder
      @source_folder = source_folder
      @source_workbook = source_workbook
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'POST'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/copy'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['sourceSheet'] = @source_sheet
      query['sourceWorkbook'] = @source_workbook unless @source_workbook.nil?
      query['sourceFolder'] = @source_folder unless @source_folder.nil?
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
      return nil if @options.nil?
      if @options.is_a?(Array)
        @options.map { |item| item.respond_to?(:to_hash) ? item.to_hash : item }
      elsif @options.respond_to?(:to_hash)
        @options.to_hash
      else
        @options
      end
    end

  end

end
