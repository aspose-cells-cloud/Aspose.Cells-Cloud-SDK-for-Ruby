=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutConvertWorkbookRequest.rb">
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

  class PutConvertWorkbookRequest < Aspose::Cells::Cloud::RequestOption
    # @return [File]
    attr_accessor :file
    # @return [String]
    attr_accessor :format
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :auto_columns_fit
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :auto_rows_fit
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :check_excel_restriction
    # @return [String, nil when omitted]
    attr_accessor :fonts_location
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :one_page_per_sheet
    # @return [String, nil when omitted]
    attr_accessor :out_path
    # @return [Integer, nil when omitted]
    attr_accessor :page_index
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :page_tall_fit_on_per_sheet
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :page_wide_fit_on_per_sheet
    # @return [String, nil when omitted]
    attr_accessor :password
    # @return [String, nil when omitted]
    attr_accessor :region
    # @return [String, nil when omitted]
    attr_accessor :sheet_name
    # @return [String, nil when omitted]
    attr_accessor :storage_name
    # @return [String, nil when omitted]
    attr_accessor :stream_format

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(file:, format:, auto_columns_fit: nil, auto_rows_fit: nil, check_excel_restriction: nil, fonts_location: nil, one_page_per_sheet: nil, out_path: nil, page_index: nil, page_tall_fit_on_per_sheet: nil, page_wide_fit_on_per_sheet: nil, password: nil, region: nil, sheet_name: nil, storage_name: nil, stream_format: nil)
      raise ArgumentError, 'Missing the required parameter `file` when calling `PutConvertWorkbookRequest.new`' if file.nil?
      raise ArgumentError, 'Missing the required parameter `format` when calling `PutConvertWorkbookRequest.new`' if format.nil?
      @file = file
      @format = format
      @auto_columns_fit = auto_columns_fit
      @auto_rows_fit = auto_rows_fit
      @check_excel_restriction = check_excel_restriction
      @fonts_location = fonts_location
      @one_page_per_sheet = one_page_per_sheet
      @out_path = out_path
      @page_index = page_index
      @page_tall_fit_on_per_sheet = page_tall_fit_on_per_sheet
      @page_wide_fit_on_per_sheet = page_wide_fit_on_per_sheet
      @password = password
      @region = region
      @sheet_name = sheet_name
      @storage_name = storage_name
      @stream_format = stream_format
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/convert'
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['format'] = @format
      query['password'] = @password unless @password.nil?
      query['outPath'] = @out_path unless @out_path.nil?
      query['storageName'] = @storage_name unless @storage_name.nil?
      query['checkExcelRestriction'] = @check_excel_restriction unless @check_excel_restriction.nil?
      query['streamFormat'] = @stream_format unless @stream_format.nil?
      query['region'] = @region unless @region.nil?
      query['pageWideFitOnPerSheet'] = @page_wide_fit_on_per_sheet unless @page_wide_fit_on_per_sheet.nil?
      query['pageTallFitOnPerSheet'] = @page_tall_fit_on_per_sheet unless @page_tall_fit_on_per_sheet.nil?
      query['sheetName'] = @sheet_name unless @sheet_name.nil?
      query['pageIndex'] = @page_index unless @page_index.nil?
      query['onePagePerSheet'] = @one_page_per_sheet unless @one_page_per_sheet.nil?
      query['AutoRowsFit'] = @auto_rows_fit unless @auto_rows_fit.nil?
      query['AutoColumnsFit'] = @auto_columns_fit unless @auto_columns_fit.nil?
      query['FontsLocation'] = @fonts_location unless @fonts_location.nil?
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
      form['File'] = @file
      form
    end

  end

end
