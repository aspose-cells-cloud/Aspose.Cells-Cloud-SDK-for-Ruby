=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="SplitTable_request.rb.cs">
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
  class SplitTableRequest

    attr_accessor :spreadsheet  
    attr_accessor :worksheet  
    attr_accessor :table_name  
    attr_accessor :split_column_name  
    attr_accessor :save_split_column  
    attr_accessor :split_row_number  
    attr_accessor :to_new_workbook  
    attr_accessor :to_multiple_files  
    attr_accessor :out_path  
    attr_accessor :out_storage_name  
    attr_accessor :fonts_location  
    attr_accessor :region  
    attr_accessor :password  

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Spreadsheet')
          self.spreadsheet = attributes[:'Spreadsheet']
      end

      if attributes.has_key?(:'worksheet')
          self.worksheet = attributes[:'worksheet']
      end

      if attributes.has_key?(:'tableName')
          self.table_name = attributes[:'tableName']
      end

      if attributes.has_key?(:'splitColumnName')
          self.split_column_name = attributes[:'splitColumnName']
      end

      if attributes.has_key?(:'saveSplitColumn')
          self.save_split_column = attributes[:'saveSplitColumn']
      end

      if attributes.has_key?(:'splitRowNumber')
          self.split_row_number = attributes[:'splitRowNumber']
      end

      if attributes.has_key?(:'toNewWorkbook')
          self.to_new_workbook = attributes[:'toNewWorkbook']
      end

      if attributes.has_key?(:'toMultipleFiles')
          self.to_multiple_files = attributes[:'toMultipleFiles']
      end

      if attributes.has_key?(:'outPath')
          self.out_path = attributes[:'outPath']
      end

      if attributes.has_key?(:'outStorageName')
          self.out_storage_name = attributes[:'outStorageName']
      end

      if attributes.has_key?(:'fontsLocation')
          self.fonts_location = attributes[:'fontsLocation']
      end

      if attributes.has_key?(:'region')
          self.region = attributes[:'region']
      end

      if attributes.has_key?(:'password')
          self.password = attributes[:'password']
      end

    end    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'spreadsheet' => :'Spreadsheet',
        :'worksheet' => :'worksheet',
        :'table_name' => :'tableName',
        :'split_column_name' => :'splitColumnName',
        :'save_split_column' => :'saveSplitColumn',
        :'split_row_number' => :'splitRowNumber',
        :'to_new_workbook' => :'toNewWorkbook',
        :'to_multiple_files' => :'toMultipleFiles',
        :'out_path' => :'outPath',
        :'out_storage_name' => :'outStorageName',
        :'fonts_location' => :'fontsLocation',
        :'region' => :'region',
        :'password' => :'password'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'spreadsheet' => :'String',
        :'worksheet' => :'String',
        :'table_name' => :'String',
        :'split_column_name' => :'String',
        :'save_split_column' => :'BOOLEAN',
        :'split_row_number' => :'Integer',
        :'to_new_workbook' => :'BOOLEAN',
        :'to_multiple_files' => :'BOOLEAN',
        :'out_path' => :'String',
        :'out_storage_name' => :'String',
        :'fonts_location' => :'String',
        :'region' => :'String',
        :'password' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.split_table ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'spreadsheet' is set
      if api_client.config.client_side_validation && spreadsheet.nil?
          fail ArgumentError, "Missing the required parameter 'spreadsheet' when calling CellsApi.split_table "
      end 
      # verify the required parameter 'worksheet' is set
      if api_client.config.client_side_validation && worksheet.nil?
          fail ArgumentError, "Missing the required parameter 'worksheet' when calling CellsApi.split_table "
      end 
      # verify the required parameter 'table_name' is set
      if api_client.config.client_side_validation && table_name.nil?
          fail ArgumentError, "Missing the required parameter 'table_name' when calling CellsApi.split_table "
      end 
      # verify the required parameter 'split_column_name' is set
      if api_client.config.client_side_validation && split_column_name.nil?
          fail ArgumentError, "Missing the required parameter 'split_column_name' when calling CellsApi.split_table "
      end 
      # verify the required parameter 'save_split_column' is set
      if api_client.config.client_side_validation && save_split_column.nil?
          fail ArgumentError, "Missing the required parameter 'save_split_column' when calling CellsApi.split_table "
      end 
      # verify the required parameter 'split_row_number' is set
      if api_client.config.client_side_validation && split_row_number.nil?
          fail ArgumentError, "Missing the required parameter 'split_row_number' when calling CellsApi.split_table "
      end 
      # verify the required parameter 'to_new_workbook' is set
      if api_client.config.client_side_validation && to_new_workbook.nil?
          fail ArgumentError, "Missing the required parameter 'to_new_workbook' when calling CellsApi.split_table "
      end 
      # verify the required parameter 'to_multiple_files' is set
      if api_client.config.client_side_validation && to_multiple_files.nil?
          fail ArgumentError, "Missing the required parameter 'to_multiple_files' when calling CellsApi.split_table "
      end 

      # resource path
      local_var_path = "v4.0/cells/split/table"
      # query parameters
      query_params = {}
      query_params[:'worksheet'] = self.worksheet if !self.worksheet.nil? 
      query_params[:'tableName'] = self.table_name if !self.table_name.nil? 
      query_params[:'splitColumnName'] = self.split_column_name if !self.split_column_name.nil? 
      query_params[:'saveSplitColumn'] = self.save_split_column if !self.save_split_column.nil? 
      query_params[:'splitRowNumber'] = self.split_row_number if !self.split_row_number.nil? 
      query_params[:'toNewWorkbook'] = self.to_new_workbook if !self.to_new_workbook.nil? 
      query_params[:'toMultipleFiles'] = self.to_multiple_files if !self.to_multiple_files.nil? 
      query_params[:'outPath'] = self.out_path if !self.out_path.nil? 
      query_params[:'outStorageName'] = self.out_storage_name if !self.out_storage_name.nil? 
      query_params[:'fontsLocation'] = self.fonts_location if !self.fonts_location.nil? 
      query_params[:'region'] = self.region if !self.region.nil? 
      query_params[:'password'] = self.password if !self.password.nil? 

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
      if !spreadsheet.empty? && File.exist?(spreadsheet )
          form_params[File.basename(spreadsheet)] =  ::File.open(spreadsheet,"r")   
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
        api_client.config.logger.debug "API called: Specification.Name>Api.split_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end