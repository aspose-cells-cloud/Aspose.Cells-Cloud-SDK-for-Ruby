=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="TrimCharacterRequest.rb">
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

  class TrimCharacterRequest < Aspose::Cells::Cloud::RequestOption
    # @return [File]
    attr_accessor :spreadsheet
    # @return [String, nil when omitted]
    attr_accessor :out_path
    # @return [String, nil when omitted]
    attr_accessor :out_storage_name
    # @return [String, nil when omitted]
    attr_accessor :password
    # @return [String, nil when omitted]
    attr_accessor :range
    # @return [String, nil when omitted]
    attr_accessor :region
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :remove_all_line_breaks
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :remove_extra_line_breaks
    # @return [String, nil when omitted]
    attr_accessor :trim_content
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :trim_leading
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :trim_non_breaking_spaces
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :trim_space_between_word_to1
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :trim_trailing
    # @return [String, nil when omitted]
    attr_accessor :worksheet

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(spreadsheet:, out_path: nil, out_storage_name: nil, password: nil, range: nil, region: nil, remove_all_line_breaks: nil, remove_extra_line_breaks: nil, trim_content: nil, trim_leading: nil, trim_non_breaking_spaces: nil, trim_space_between_word_to1: nil, trim_trailing: nil, worksheet: nil)
      raise ArgumentError, 'Missing the required parameter `spreadsheet` when calling `TrimCharacterRequest.new`' if spreadsheet.nil?
      @spreadsheet = spreadsheet
      @out_path = out_path
      @out_storage_name = out_storage_name
      @password = password
      @range = range
      @region = region
      @remove_all_line_breaks = remove_all_line_breaks
      @remove_extra_line_breaks = remove_extra_line_breaks
      @trim_content = trim_content
      @trim_leading = trim_leading
      @trim_non_breaking_spaces = trim_non_breaking_spaces
      @trim_space_between_word_to1 = trim_space_between_word_to1
      @trim_trailing = trim_trailing
      @worksheet = worksheet
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v4.0/cells/content/trim'
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['trimContent'] = @trim_content unless @trim_content.nil?
      query['trimLeading'] = @trim_leading unless @trim_leading.nil?
      query['trimTrailing'] = @trim_trailing unless @trim_trailing.nil?
      query['trimSpaceBetweenWordTo1'] = @trim_space_between_word_to1 unless @trim_space_between_word_to1.nil?
      query['trimNonBreakingSpaces'] = @trim_non_breaking_spaces unless @trim_non_breaking_spaces.nil?
      query['removeExtraLineBreaks'] = @remove_extra_line_breaks unless @remove_extra_line_breaks.nil?
      query['removeAllLineBreaks'] = @remove_all_line_breaks unless @remove_all_line_breaks.nil?
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
