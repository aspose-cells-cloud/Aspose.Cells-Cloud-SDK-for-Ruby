=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="UploadFile_request.rb.cs">
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
  class UploadFileRequest

    attr_accessor :upload_files  
    attr_accessor :path  
    attr_accessor :storage_name  

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'UploadFiles')
          self.upload_files = attributes[:'UploadFiles']
      end

      if attributes.has_key?(:'path')
          self.path = attributes[:'path']
      end

      if attributes.has_key?(:'storageName')
          self.storage_name = attributes[:'storageName']
      end

    end    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'upload_files' => :'UploadFiles',
        :'path' => :'path',
        :'storage_name' => :'storageName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'upload_files' => :'String',
        :'path' => :'String',
        :'storage_name' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.upload_file ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'upload_files' is set
      if api_client.config.client_side_validation && upload_files.nil?
          fail ArgumentError, "Missing the required parameter 'upload_files' when calling CellsApi.upload_file "
      end 
      # verify the required parameter 'path' is set
      if api_client.config.client_side_validation && path.nil?
          fail ArgumentError, "Missing the required parameter 'path' when calling CellsApi.upload_file "
      end 

      # resource path
      local_var_path = "v4.0/cells/storage/file/{path}".sub('{' + 'path' + '}', path.to_s)
      # query parameters
      query_params = {}
      query_params[:'storageName'] = self.storage_name if !self.storage_name.nil? 

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
      if !upload_files.empty? && File.exist?(upload_files )
          form_params[File.basename(upload_files)] =  ::File.open(upload_files,"r")   
      end 

      #auth_names = []
      auth_names = ['JWT']
      data, status_code, headers = api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FilesUploadResult')
      if api_client.config.debugging
        api_client.config.logger.debug "API called: Specification.Name>Api.upload_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end