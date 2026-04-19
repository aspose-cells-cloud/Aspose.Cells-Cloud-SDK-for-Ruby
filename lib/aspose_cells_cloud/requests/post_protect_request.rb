=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostProtect_request.rb.cs">
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
  class PostProtectRequest

    attr_accessor :file  
    attr_accessor :protect_workbook_request  
    attr_accessor :password  

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'File')
          self.file = attributes[:'File']
      end

      if attributes.has_key?(:'protectWorkbookRequest')
          self.protect_workbook_request = attributes[:'protectWorkbookRequest']
      end

      if attributes.has_key?(:'password')
          self.password = attributes[:'password']
      end

    end    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file' => :'File',
        :'protect_workbook_request' => :'protectWorkbookRequest',
        :'password' => :'password'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'file' => :'Hash',
        :'protect_workbook_request' => :'ProtectWorkbookRequest',
        :'password' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.post_protect ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'file' is set
      if api_client.config.client_side_validation && file.nil?
          fail ArgumentError, "Missing the required parameter 'file' when calling CellsApi.post_protect "
      end 
      # verify the required parameter 'protect_workbook_request' is set
      if api_client.config.client_side_validation && protect_workbook_request.nil?
          fail ArgumentError, "Missing the required parameter 'protect_workbook_request' when calling CellsApi.post_protect "
      end 

      # resource path
      local_var_path = "v3.0/cells/protect"
      # query parameters
      query_params = {}
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
      if !file.nil?
          file.each do |filename , context|
          form_params[File.basename(filename)]  = context
          end
      end
      form_params['protect_workbook_request']  = post_body.to_json

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
        api_client.config.logger.debug "API called: Specification.Name>Api.post_protect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end