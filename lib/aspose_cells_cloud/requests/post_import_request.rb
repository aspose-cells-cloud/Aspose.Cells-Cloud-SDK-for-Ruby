=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostImport_request.rb.cs">
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
  class PostImportRequest

    attr_accessor :file  
    attr_accessor :out_format  
    attr_accessor :password  
    attr_accessor :check_excel_restriction  
    attr_accessor :region  

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'File')
          self.file = attributes[:'File']
      end

      if attributes.has_key?(:'outFormat')
          self.out_format = attributes[:'outFormat']
      end

      if attributes.has_key?(:'password')
          self.password = attributes[:'password']
      end

      if attributes.has_key?(:'checkExcelRestriction')
          self.check_excel_restriction = attributes[:'checkExcelRestriction']
      end

      if attributes.has_key?(:'region')
          self.region = attributes[:'region']
      end

    end    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file' => :'File',
        :'out_format' => :'outFormat',
        :'password' => :'password',
        :'check_excel_restriction' => :'checkExcelRestriction',
        :'region' => :'region'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'file' => :'Hash',
        :'out_format' => :'String',
        :'password' => :'String',
        :'check_excel_restriction' => :'BOOLEAN',
        :'region' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.post_import ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if api_client.config.client_side_validation && file.nil?
          fail ArgumentError, "Missing the required parameter 'file' when calling CellsApi.post_import "
      end 

      # resource path
      local_var_path = "v3.0/cells/import"
      # query parameters
      query_params = {}
      query_params[:'outFormat'] = self.out_format if !self.out_format.nil? 
      query_params[:'password'] = self.password if !self.password.nil? 
      query_params[:'checkExcelRestriction'] = self.check_excel_restriction if !self.check_excel_restriction.nil? 
      query_params[:'region'] = self.region if !self.region.nil? 

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
      data, status_code, headers = api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesResult')
      if api_client.config.debugging
        api_client.config.logger.debug "API called: Specification.Name>Api.post_import\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end