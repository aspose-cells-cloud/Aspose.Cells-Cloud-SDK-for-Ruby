=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="SplitTextRequest.rb">
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

  class SplitTextRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :delimiters
    # @return [File]
    attr_accessor :spreadsheet
    # @return [String, nil when omitted]
    attr_accessor :how_to_split
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :keep_delimiters_in_resulting_cells
    # @return [String, nil when omitted]
    attr_accessor :keep_delimiters_position
    # @return [String, nil when omitted]
    attr_accessor :out_path
    # @return [String, nil when omitted]
    attr_accessor :out_position_range
    # @return [String, nil when omitted]
    attr_accessor :out_storage_name
    # @return [String, nil when omitted]
    attr_accessor :password
    # @return [String, nil when omitted]
    attr_accessor :range
    # @return [String, nil when omitted]
    attr_accessor :region
    # @return [String, nil when omitted]
    attr_accessor :worksheet

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(delimiters:, spreadsheet:, how_to_split: nil, keep_delimiters_in_resulting_cells: nil, keep_delimiters_position: nil, out_path: nil, out_position_range: nil, out_storage_name: nil, password: nil, range: nil, region: nil, worksheet: nil)
      raise ArgumentError, 'Missing the required parameter `delimiters` when calling `SplitTextRequest.new`' if delimiters.nil?
      raise ArgumentError, 'Missing the required parameter `spreadsheet` when calling `SplitTextRequest.new`' if spreadsheet.nil?
      @delimiters = delimiters
      @spreadsheet = spreadsheet
      @how_to_split = how_to_split
      @keep_delimiters_in_resulting_cells = keep_delimiters_in_resulting_cells
      @keep_delimiters_position = keep_delimiters_position
      @out_path = out_path
      @out_position_range = out_position_range
      @out_storage_name = out_storage_name
      @password = password
      @range = range
      @region = region
      @worksheet = worksheet
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v4.0/cells/content/split/text'
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['delimiters'] = @delimiters
      query['keepDelimitersInResultingCells'] = @keep_delimiters_in_resulting_cells unless @keep_delimiters_in_resulting_cells.nil?
      query['keepDelimitersPosition'] = @keep_delimiters_position unless @keep_delimiters_position.nil?
      query['HowToSplit'] = @how_to_split unless @how_to_split.nil?
      query['outPositionRange'] = @out_position_range unless @out_position_range.nil?
      query['worksheet'] = @worksheet unless @worksheet.nil?
      query['range'] = @range unless @range.nil?
      query['outPath'] = @out_path unless @out_path.nil?
      query['outStorageName'] = @out_storage_name unless @out_storage_name.nil?
      query['region'] = @region unless @region.nil?
      query['password'] = @password unless @password.nil?
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
