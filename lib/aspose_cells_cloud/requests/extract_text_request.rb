=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ExtractText_request.rb.cs">
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
  class ExtractTextRequest

    attr_accessor :spreadsheet  
    attr_accessor :extract_text_type  
    attr_accessor :out_position_range  
    attr_accessor :before_text  
    attr_accessor :after_text  
    attr_accessor :before_position  
    attr_accessor :after_position  
    attr_accessor :worksheet  
    attr_accessor :range  
    attr_accessor :out_path  
    attr_accessor :out_storage_name  
    attr_accessor :region  
    attr_accessor :password  

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'Spreadsheet')
          self.spreadsheet = attributes[:'Spreadsheet']
      end

      if attributes.has_key?(:'extractTextType')
          self.extract_text_type = attributes[:'extractTextType']
      end

      if attributes.has_key?(:'outPositionRange')
          self.out_position_range = attributes[:'outPositionRange']
      end

      if attributes.has_key?(:'beforeText')
          self.before_text = attributes[:'beforeText']
      end

      if attributes.has_key?(:'afterText')
          self.after_text = attributes[:'afterText']
      end

      if attributes.has_key?(:'beforePosition')
          self.before_position = attributes[:'beforePosition']
      end

      if attributes.has_key?(:'afterPosition')
          self.after_position = attributes[:'afterPosition']
      end

      if attributes.has_key?(:'worksheet')
          self.worksheet = attributes[:'worksheet']
      end

      if attributes.has_key?(:'range')
          self.range = attributes[:'range']
      end

      if attributes.has_key?(:'outPath')
          self.out_path = attributes[:'outPath']
      end

      if attributes.has_key?(:'outStorageName')
          self.out_storage_name = attributes[:'outStorageName']
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
        :'extract_text_type' => :'extractTextType',
        :'out_position_range' => :'outPositionRange',
        :'before_text' => :'beforeText',
        :'after_text' => :'afterText',
        :'before_position' => :'beforePosition',
        :'after_position' => :'afterPosition',
        :'worksheet' => :'worksheet',
        :'range' => :'range',
        :'out_path' => :'outPath',
        :'out_storage_name' => :'outStorageName',
        :'region' => :'region',
        :'password' => :'password'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'spreadsheet' => :'String',
        :'extract_text_type' => :'String',
        :'out_position_range' => :'String',
        :'before_text' => :'String',
        :'after_text' => :'String',
        :'before_position' => :'Integer',
        :'after_position' => :'Integer',
        :'worksheet' => :'String',
        :'range' => :'String',
        :'out_path' => :'String',
        :'out_storage_name' => :'String',
        :'region' => :'String',
        :'password' => :'String'
      }
    end

    def create_http_request(api_client,opts = {})
      if api_client.config.debugging
        api_client.config.logger.debug "Calling API: CellsApi.extract_text ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'spreadsheet' is set
      if api_client.config.client_side_validation && spreadsheet.nil?
          fail ArgumentError, "Missing the required parameter 'spreadsheet' when calling CellsApi.extract_text "
      end 
      # verify the required parameter 'extract_text_type' is set
      if api_client.config.client_side_validation && extract_text_type.nil?
          fail ArgumentError, "Missing the required parameter 'extract_text_type' when calling CellsApi.extract_text "
      end 
      # verify the required parameter 'out_position_range' is set
      if api_client.config.client_side_validation && out_position_range.nil?
          fail ArgumentError, "Missing the required parameter 'out_position_range' when calling CellsApi.extract_text "
      end 

      # resource path
      local_var_path = "v4.0/cells/content/extract/text"
      # query parameters
      query_params = {}
      query_params[:'extractTextType'] = self.extract_text_type if !self.extract_text_type.nil? 
      query_params[:'outPositionRange'] = self.out_position_range if !self.out_position_range.nil? 
      query_params[:'beforeText'] = self.before_text if !self.before_text.nil? 
      query_params[:'afterText'] = self.after_text if !self.after_text.nil? 
      query_params[:'beforePosition'] = self.before_position if !self.before_position.nil? 
      query_params[:'afterPosition'] = self.after_position if !self.after_position.nil? 
      query_params[:'worksheet'] = self.worksheet if !self.worksheet.nil? 
      query_params[:'range'] = self.range if !self.range.nil? 
      query_params[:'outPath'] = self.out_path if !self.out_path.nil? 
      query_params[:'outStorageName'] = self.out_storage_name if !self.out_storage_name.nil? 
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
        api_client.config.logger.debug "API called: Specification.Name>Api.extract_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end