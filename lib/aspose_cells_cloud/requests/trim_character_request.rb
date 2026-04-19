=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="TrimCharacter_request.rb.cs">
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
  class TrimCharacterRequest

    attr_accessor :spreadsheet  
    attr_accessor :trim_content  
    attr_accessor :trim_leading  
    attr_accessor :trim_trailing  
    attr_accessor :trim_space_between_word_to1  
    attr_accessor :trim_non_breaking_spaces  
    attr_accessor :remove_extra_line_breaks  
    attr_accessor :remove_all_line_breaks  
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

      if attributes.has_key?(:'trimContent')
          self.trim_content = attributes[:'trimContent']
      end

      if attributes.has_key?(:'trimLeading')
          self.trim_leading = attributes[:'trimLeading']
      end

      if attributes.has_key?(:'trimTrailing')
          self.trim_trailing = attributes[:'trimTrailing']
      end

      if attributes.has_key?(:'trimSpaceBetweenWordTo1')
          self.trim_space_between_word_to1 = attributes[:'trimSpaceBetweenWordTo1']
      end

      if attributes.has_key?(:'trimNonBreakingSpaces')
          self.trim_non_breaking_spaces = attributes[:'trimNonBreakingSpaces']
      end

      if attributes.has_key?(:'removeExtraLineBreaks')
          self.remove_extra_line_breaks = attributes[:'removeExtraLineBreaks']
      end

      if attributes.has_key?(:'removeAllLineBreaks')
          self.remove_all_line_breaks = attributes[:'removeAllLineBreaks']
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
        :'trim_content' => :'trimContent',
        :'trim_leading' => :'trimLeading',
        :'trim_trailing' => :'trimTrailing',
        :'trim_space_between_word_to1' => :'trimSpaceBetweenWordTo1',
        :'trim_non_breaking_spaces' => :'trimNonBreakingSpaces',
        :'remove_extra_line_breaks' => :'removeExtraLineBreaks',
        :'remove_all_line_breaks' => :'removeAllLineBreaks',
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
        :'trim_content' => :'String',
        :'trim_leading' => :'BOOLEAN',
        :'trim_trailing' => :'BOOLEAN',
        :'trim_space_between_word_to1' => :'BOOLEAN',
        :'trim_non_breaking_spaces' => :'BOOLEAN',
        :'remove_extra_line_breaks' => :'BOOLEAN',
        :'remove_all_line_breaks' => :'BOOLEAN',
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
        api_client.config.logger.debug "Calling API: CellsApi.trim_character ..."
      end
      api_client.request_token_if_needed
      # verify the required parameter 'spreadsheet' is set
      if api_client.config.client_side_validation && spreadsheet.nil?
          fail ArgumentError, "Missing the required parameter 'spreadsheet' when calling CellsApi.trim_character "
      end 

      # resource path
      local_var_path = "v4.0/cells/content/trim"
      # query parameters
      query_params = {}
      query_params[:'trimContent'] = self.trim_content if !self.trim_content.nil? 
      query_params[:'trimLeading'] = self.trim_leading if !self.trim_leading.nil? 
      query_params[:'trimTrailing'] = self.trim_trailing if !self.trim_trailing.nil? 
      query_params[:'trimSpaceBetweenWordTo1'] = self.trim_space_between_word_to1 if !self.trim_space_between_word_to1.nil? 
      query_params[:'trimNonBreakingSpaces'] = self.trim_non_breaking_spaces if !self.trim_non_breaking_spaces.nil? 
      query_params[:'removeExtraLineBreaks'] = self.remove_extra_line_breaks if !self.remove_extra_line_breaks.nil? 
      query_params[:'removeAllLineBreaks'] = self.remove_all_line_breaks if !self.remove_all_line_breaks.nil? 
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
        api_client.config.logger.debug "API called: Specification.Name>Api.trim_character\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end