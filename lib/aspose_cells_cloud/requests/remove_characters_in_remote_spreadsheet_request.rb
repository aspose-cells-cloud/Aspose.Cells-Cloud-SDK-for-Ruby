=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="RemoveCharactersInRemoteSpreadsheet_request.rb.cs">
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
  class RemoveCharactersInRemoteSpreadsheetRequest

    attr_accessor :name  
    attr_accessor :worksheet  
    attr_accessor :range  
    attr_accessor :remove_text_method  
    attr_accessor :character_sets  
    attr_accessor :remove_custom_value  
    attr_accessor :case_sensitive  
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

      if attributes.has_key?(:'removeTextMethod')
          self.remove_text_method = attributes[:'removeTextMethod']
      end

      if attributes.has_key?(:'characterSets')
          self.character_sets = attributes[:'characterSets']
      end

      if attributes.has_key?(:'removeCustomValue')
          self.remove_custom_value = attributes[:'removeCustomValue']
      end

      if attributes.has_key?(:'caseSensitive')
          self.case_sensitive = attributes[:'caseSensitive']
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
        :'remove_text_method' => :'removeTextMethod',
        :'character_sets' => :'characterSets',
        :'remove_custom_value' => :'removeCustomValue',
        :'case_sensitive' => :'caseSensitive',
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
        :'remove_text_method' => :'String',
        :'character_sets' => :'String',
        :'remove_custom_value' => :'String',
        :'case_sensitive' => :'BOOLEAN',
        :'folder' => :'String',
        :'storage_name' => :'String',
        :'region' => :'String',
        :'password' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.remove_characters_in_remote_spreadsheet ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && name.nil?
          fail ArgumentError, "Missing the required parameter 'name' when calling CellsApi.remove_characters_in_remote_spreadsheet "
      end 
      # verify the required parameter 'worksheet' is set
      if api_client.config.client_side_validation && worksheet.nil?
          fail ArgumentError, "Missing the required parameter 'worksheet' when calling CellsApi.remove_characters_in_remote_spreadsheet "
      end 
      # verify the required parameter 'range' is set
      if api_client.config.client_side_validation && range.nil?
          fail ArgumentError, "Missing the required parameter 'range' when calling CellsApi.remove_characters_in_remote_spreadsheet "
      end 

      # resource path
      local_var_path = "v4.0/cells/{name}/worksheets/{worksheet}/range/{range}/content/remove/characters".sub('{' + 'name' + '}', name.to_s).sub('{' + 'worksheet' + '}', worksheet.to_s).sub('{' + 'range' + '}', range.to_s)
      # query parameters
      query_params = {}
      query_params[:'removeTextMethod'] = self.remove_text_method if !self.remove_text_method.nil? 
      query_params[:'characterSets'] = self.character_sets if !self.character_sets.nil? 
      query_params[:'removeCustomValue'] = self.remove_custom_value if !self.remove_custom_value.nil? 
      query_params[:'caseSensitive'] = self.case_sensitive if !self.case_sensitive.nil? 
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
        api_client.config.logger.debug "API called: Specification.Name>Api.remove_characters_in_remote_spreadsheet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end