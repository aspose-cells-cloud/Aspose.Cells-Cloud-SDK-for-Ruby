=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="AddTextInRemoteSpreadsheet_request.rb.cs">
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
  class AddTextInRemoteSpreadsheetRequest

    attr_accessor :name  
    attr_accessor :worksheet  
    attr_accessor :range  
    attr_accessor :text  
    attr_accessor :position  
    attr_accessor :select_text  
    attr_accessor :skip_empty_cells  
    attr_accessor :folder  
    attr_accessor :storage_name  
    attr_accessor :region  
    attr_accessor :password  

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
          self.name = attributes[:'name']
      end

      if attributes.has_key?(:'worksheet')
          self.worksheet = attributes[:'worksheet']
      end

      if attributes.has_key?(:'range')
          self.range = attributes[:'range']
      end

      if attributes.has_key?(:'text')
          self.text = attributes[:'text']
      end

      if attributes.has_key?(:'position')
          self.position = attributes[:'position']
      end

      if attributes.has_key?(:'selectText')
          self.select_text = attributes[:'selectText']
      end

      if attributes.has_key?(:'skipEmptyCells')
          self.skip_empty_cells = attributes[:'skipEmptyCells']
      end

      if attributes.has_key?(:'folder')
          self.folder = attributes[:'folder']
      end

      if attributes.has_key?(:'storageName')
          self.storage_name = attributes[:'storageName']
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
        :'name' => :'name',
        :'worksheet' => :'worksheet',
        :'range' => :'range',
        :'text' => :'text',
        :'position' => :'position',
        :'select_text' => :'selectText',
        :'skip_empty_cells' => :'skipEmptyCells',
        :'folder' => :'folder',
        :'storage_name' => :'storageName',
        :'region' => :'region',
        :'password' => :'password'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'worksheet' => :'String',
        :'range' => :'String',
        :'text' => :'String',
        :'position' => :'String',
        :'select_text' => :'String',
        :'skip_empty_cells' => :'BOOLEAN',
        :'folder' => :'String',
        :'storage_name' => :'String',
        :'region' => :'String',
        :'password' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.add_text_in_remote_spreadsheet ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && name.nil?
          fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.add_text_in_remote_spreadsheet "
      end 
      # verify the required parameter 'worksheet' is set
      if api_client.config.client_side_validation && worksheet.nil?
          fail ArgumentError, "Missing the required parameter 'worksheet' when calling CellsApi.add_text_in_remote_spreadsheet "
      end 
      # verify the required parameter 'range' is set
      if api_client.config.client_side_validation && range.nil?
          fail ArgumentError, "Missing the required parameter 'range' when calling CellsApi.add_text_in_remote_spreadsheet "
      end 
      # verify the required parameter 'text' is set
      if api_client.config.client_side_validation && text.nil?
          fail ArgumentError, "Missing the required parameter 'text' when calling CellsApi.add_text_in_remote_spreadsheet "
      end 
      # verify the required parameter 'position' is set
      if api_client.config.client_side_validation && position.nil?
          fail ArgumentError, "Missing the required parameter 'position' when calling CellsApi.add_text_in_remote_spreadsheet "
      end 

      # resource path
      local_var_path = "v4.0/cells/{name}/worksheets/{worksheet}/range/{range}/content/add/text".sub('{' + 'name' + '}', name.to_s).sub('{' + 'worksheet' + '}', worksheet.to_s).sub('{' + 'range' + '}', range.to_s)
      # query parameters
      query_params = {}
      query_params[:'text'] = self.text if !self.text.nil? 
      query_params[:'position'] = self.position if !self.position.nil? 
      query_params[:'selectText'] = self.select_text if !self.select_text.nil? 
      query_params[:'skipEmptyCells'] = self.skip_empty_cells if !self.skip_empty_cells.nil? 
      query_params[:'folder'] = self.folder if !self.folder.nil? 
      query_params[:'storageName'] = self.storage_name if !self.storage_name.nil? 
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

      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CellsCloudResponse')
      if api_client.config.debugging
        api_client.config.logger.debug "API called: Specification.Name>Api.add_text_in_remote_spreadsheet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end