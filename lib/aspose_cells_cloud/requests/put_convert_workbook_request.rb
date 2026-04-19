=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PutConvertWorkbook_request.rb.cs">
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


require "uri"

module AsposeCellsCloud
  class PutConvertWorkbookRequest

    attr_accessor :file  
    attr_accessor :format  
    attr_accessor :password  
    attr_accessor :out_path  
    attr_accessor :storage_name  
    attr_accessor :check_excel_restriction  
    attr_accessor :stream_format  
    attr_accessor :region  
    attr_accessor :page_wide_fit_on_per_sheet  
    attr_accessor :page_tall_fit_on_per_sheet  
    attr_accessor :sheet_name  
    attr_accessor :page_index  
    attr_accessor :one_page_per_sheet  
    attr_accessor :auto_rows_fit  
    attr_accessor :auto_columns_fit  
    attr_accessor :fonts_location  

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'File')
          self.file = attributes[:'File']
      end

      if attributes.has_key?(:'format')
          self.format = attributes[:'format']
      end

      if attributes.has_key?(:'password')
          self.password = attributes[:'password']
      end

      if attributes.has_key?(:'outPath')
          self.out_path = attributes[:'outPath']
      end

      if attributes.has_key?(:'storageName')
          self.storage_name = attributes[:'storageName']
      end

      if attributes.has_key?(:'checkExcelRestriction')
          self.check_excel_restriction = attributes[:'checkExcelRestriction']
      end

      if attributes.has_key?(:'streamFormat')
          self.stream_format = attributes[:'streamFormat']
      end

      if attributes.has_key?(:'region')
          self.region = attributes[:'region']
      end

      if attributes.has_key?(:'pageWideFitOnPerSheet')
          self.page_wide_fit_on_per_sheet = attributes[:'pageWideFitOnPerSheet']
      end

      if attributes.has_key?(:'pageTallFitOnPerSheet')
          self.page_tall_fit_on_per_sheet = attributes[:'pageTallFitOnPerSheet']
      end

      if attributes.has_key?(:'sheetName')
          self.sheet_name = attributes[:'sheetName']
      end

      if attributes.has_key?(:'pageIndex')
          self.page_index = attributes[:'pageIndex']
      end

      if attributes.has_key?(:'onePagePerSheet')
          self.one_page_per_sheet = attributes[:'onePagePerSheet']
      end

      if attributes.has_key?(:'AutoRowsFit')
          self.auto_rows_fit = attributes[:'AutoRowsFit']
      end

      if attributes.has_key?(:'AutoColumnsFit')
          self.auto_columns_fit = attributes[:'AutoColumnsFit']
      end

      if attributes.has_key?(:'FontsLocation')
          self.fonts_location = attributes[:'FontsLocation']
      end

    end    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file' => :'File',
        :'format' => :'format',
        :'password' => :'password',
        :'out_path' => :'outPath',
        :'storage_name' => :'storageName',
        :'check_excel_restriction' => :'checkExcelRestriction',
        :'stream_format' => :'streamFormat',
        :'region' => :'region',
        :'page_wide_fit_on_per_sheet' => :'pageWideFitOnPerSheet',
        :'page_tall_fit_on_per_sheet' => :'pageTallFitOnPerSheet',
        :'sheet_name' => :'sheetName',
        :'page_index' => :'pageIndex',
        :'one_page_per_sheet' => :'onePagePerSheet',
        :'auto_rows_fit' => :'AutoRowsFit',
        :'auto_columns_fit' => :'AutoColumnsFit',
        :'fonts_location' => :'FontsLocation'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'file' => :'Hash',
        :'format' => :'String',
        :'password' => :'String',
        :'out_path' => :'String',
        :'storage_name' => :'String',
        :'check_excel_restriction' => :'BOOLEAN',
        :'stream_format' => :'String',
        :'region' => :'String',
        :'page_wide_fit_on_per_sheet' => :'BOOLEAN',
        :'page_tall_fit_on_per_sheet' => :'BOOLEAN',
        :'sheet_name' => :'String',
        :'page_index' => :'Integer',
        :'one_page_per_sheet' => :'BOOLEAN',
        :'auto_rows_fit' => :'BOOLEAN',
        :'auto_columns_fit' => :'BOOLEAN',
        :'fonts_location' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.put_convert_workbook ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if api_client.config.client_side_validation && file.nil?
          fail ArgumentError, "Missing the required parameter 'file' when calling CellsApi.put_convert_workbook "
      end 
      # verify the required parameter 'format' is set
      if api_client.config.client_side_validation && format.nil?
          fail ArgumentError, "Missing the required parameter 'format' when calling CellsApi.put_convert_workbook "
      end 

      # resource path
      local_var_path = "v3.0/cells/convert"
      # query parameters
      query_params = {}
      query_params[:'format'] = self.format if !self.format.nil? 
      query_params[:'password'] = self.password if !self.password.nil? 
      query_params[:'outPath'] = self.out_path if !self.out_path.nil? 
      query_params[:'storageName'] = self.storage_name if !self.storage_name.nil? 
      query_params[:'checkExcelRestriction'] = self.check_excel_restriction if !self.check_excel_restriction.nil? 
      query_params[:'streamFormat'] = self.stream_format if !self.stream_format.nil? 
      query_params[:'region'] = self.region if !self.region.nil? 
      query_params[:'pageWideFitOnPerSheet'] = self.page_wide_fit_on_per_sheet if !self.page_wide_fit_on_per_sheet.nil? 
      query_params[:'pageTallFitOnPerSheet'] = self.page_tall_fit_on_per_sheet if !self.page_tall_fit_on_per_sheet.nil? 
      query_params[:'sheetName'] = self.sheet_name if !self.sheet_name.nil? 
      query_params[:'pageIndex'] = self.page_index if !self.page_index.nil? 
      query_params[:'onePagePerSheet'] = self.one_page_per_sheet if !self.one_page_per_sheet.nil? 
      query_params[:'AutoRowsFit'] = self.auto_rows_fit if !self.auto_rows_fit.nil? 
      query_params[:'AutoColumnsFit'] = self.auto_columns_fit if !self.auto_columns_fit.nil? 
      query_params[:'FontsLocation'] = self.fonts_location if !self.fonts_location.nil? 

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
      post_body = nil 

      header_params['Content-Type'] = api_client.select_header_content_type(['multipart/form-data'])
      if !file.nil?
          file.each do |filename , context|
          form_params[File.basename(filename)]  = context
          end
      end

      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if api_client.config.debugging
        api_client.config.logger.debug "API called: Specification.Name>Api.put_convert_workbook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end