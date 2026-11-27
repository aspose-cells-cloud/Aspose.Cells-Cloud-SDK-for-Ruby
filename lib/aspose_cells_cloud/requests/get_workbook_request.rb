=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="GetWorkbookRequest.rb">
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

  class GetWorkbookRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :name
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :check_excel_restriction
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [String, nil when omitted]
    attr_accessor :fonts_location
    # @return [String, nil when omitted]
    attr_accessor :format
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :is_auto_fit
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :one_page_per_sheet
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :only_autofit_table
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :only_save_table
    # @return [String, nil when omitted]
    attr_accessor :out_path
    # @return [String, nil when omitted]
    attr_accessor :out_storage_name
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :page_tall_fit_on_per_sheet
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :page_wide_fit_on_per_sheet
    # @return [String, nil when omitted]
    attr_accessor :password
    # @return [String, nil when omitted]
    attr_accessor :region
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(name:, check_excel_restriction: nil, folder: nil, fonts_location: nil, format: nil, is_auto_fit: nil, one_page_per_sheet: nil, only_autofit_table: nil, only_save_table: nil, out_path: nil, out_storage_name: nil, page_tall_fit_on_per_sheet: nil, page_wide_fit_on_per_sheet: nil, password: nil, region: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `name` when calling `GetWorkbookRequest.new`' if name.nil?
      @name = name
      @check_excel_restriction = check_excel_restriction
      @folder = folder
      @fonts_location = fonts_location
      @format = format
      @is_auto_fit = is_auto_fit
      @one_page_per_sheet = one_page_per_sheet
      @only_autofit_table = only_autofit_table
      @only_save_table = only_save_table
      @out_path = out_path
      @out_storage_name = out_storage_name
      @page_tall_fit_on_per_sheet = page_tall_fit_on_per_sheet
      @page_wide_fit_on_per_sheet = page_wide_fit_on_per_sheet
      @password = password
      @region = region
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'GET'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}'
      path = path.gsub('{name}', encode_path_segment(@name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['format'] = @format unless @format.nil?
      query['password'] = @password unless @password.nil?
      query['isAutoFit'] = @is_auto_fit unless @is_auto_fit.nil?
      query['onlySaveTable'] = @only_save_table unless @only_save_table.nil?
      query['folder'] = @folder unless @folder.nil?
      query['outPath'] = @out_path unless @out_path.nil?
      query['storageName'] = @storage_name unless @storage_name.nil?
      query['outStorageName'] = @out_storage_name unless @out_storage_name.nil?
      query['checkExcelRestriction'] = @check_excel_restriction unless @check_excel_restriction.nil?
      query['region'] = @region unless @region.nil?
      query['pageWideFitOnPerSheet'] = @page_wide_fit_on_per_sheet unless @page_wide_fit_on_per_sheet.nil?
      query['pageTallFitOnPerSheet'] = @page_tall_fit_on_per_sheet unless @page_tall_fit_on_per_sheet.nil?
      query['onePagePerSheet'] = @one_page_per_sheet unless @one_page_per_sheet.nil?
      query['onlyAutofitTable'] = @only_autofit_table unless @only_autofit_table.nil?
      query['FontsLocation'] = @fonts_location unless @fonts_location.nil?
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
