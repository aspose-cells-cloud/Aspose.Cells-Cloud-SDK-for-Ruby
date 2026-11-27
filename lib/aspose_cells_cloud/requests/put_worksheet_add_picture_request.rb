=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutWorksheetAddPictureRequest.rb">
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

  class PutWorksheetAddPictureRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :sheet_name
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [Integer, nil when omitted]
    attr_accessor :lower_right_column
    # @return [Integer, nil when omitted]
    attr_accessor :lower_right_row
    # @return [Picture, nil when omitted]
    attr_accessor :picture
    # @return [String, nil when omitted]
    attr_accessor :picture_path
    # @return [String, nil when omitted]
    attr_accessor :storage_name
    # @return [Integer, nil when omitted]
    attr_accessor :upper_left_column
    # @return [Integer, nil when omitted]
    attr_accessor :upper_left_row

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(name:, sheet_name:, folder: nil, lower_right_column: nil, lower_right_row: nil, picture: nil, picture_path: nil, storage_name: nil, upper_left_column: nil, upper_left_row: nil)
      raise ArgumentError, 'Missing the required parameter `name` when calling `PutWorksheetAddPictureRequest.new`' if name.nil?
      raise ArgumentError, 'Missing the required parameter `sheet_name` when calling `PutWorksheetAddPictureRequest.new`' if sheet_name.nil?
      @name = name
      @sheet_name = sheet_name
      @folder = folder
      @lower_right_column = lower_right_column
      @lower_right_row = lower_right_row
      @picture = picture
      @picture_path = picture_path
      @storage_name = storage_name
      @upper_left_column = upper_left_column
      @upper_left_row = upper_left_row
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/worksheets/{sheetName}/pictures'
      path = path.gsub('{name}', encode_path_segment(@name))
      path = path.gsub('{sheetName}', encode_path_segment(@sheet_name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['upperLeftRow'] = @upper_left_row unless @upper_left_row.nil?
      query['upperLeftColumn'] = @upper_left_column unless @upper_left_column.nil?
      query['lowerRightRow'] = @lower_right_row unless @lower_right_row.nil?
      query['lowerRightColumn'] = @lower_right_column unless @lower_right_column.nil?
      query['picturePath'] = @picture_path unless @picture_path.nil?
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
      return nil if @picture.nil?
      if @picture.is_a?(Array)
        @picture.map { |item| item.respond_to?(:to_hash) ? item.to_hash : item }
      elsif @picture.respond_to?(:to_hash)
        @picture.to_hash
      else
        @picture
      end
    end

  end

end
