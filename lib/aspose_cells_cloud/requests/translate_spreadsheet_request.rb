=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="TranslateSpreadsheetRequest.rb">
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

  class TranslateSpreadsheetRequest < Aspose::Cells::Cloud::RequestOption
    # @return [File]
    attr_accessor :spreadsheet
    # @return [String]
    attr_accessor :target_language
    # @return [String, nil when omitted]
    attr_accessor :custom_api_key
    # @return [String, nil when omitted]
    attr_accessor :custom_endpoint
    # @return [String, nil when omitted]
    attr_accessor :custom_model
    # @return [String, nil when omitted]
    attr_accessor :password
    # @return [String, nil when omitted]
    attr_accessor :region

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(spreadsheet:, target_language:, custom_api_key: nil, custom_endpoint: nil, custom_model: nil, password: nil, region: nil)
      raise ArgumentError, 'Missing the required parameter `spreadsheet` when calling `TranslateSpreadsheetRequest.new`' if spreadsheet.nil?
      raise ArgumentError, 'Missing the required parameter `target_language` when calling `TranslateSpreadsheetRequest.new`' if target_language.nil?
      @spreadsheet = spreadsheet
      @target_language = target_language
      @custom_api_key = custom_api_key
      @custom_endpoint = custom_endpoint
      @custom_model = custom_model
      @password = password
      @region = region
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v4.0/cells/ai/translate/spreadsheet'
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['targetLanguage'] = @target_language
      query['customEndpoint'] = @custom_endpoint unless @custom_endpoint.nil?
      query['customApiKey'] = @custom_api_key unless @custom_api_key.nil?
      query['customModel'] = @custom_model unless @custom_model.nil?
      query['region'] = @region unless @region.nil?
      query['password'] = @password unless @password.nil?
      query
    end

    # @return [Hash] default headers for this operation
    def get_header_parameters
      {
        'Accept' => 'application/json',
        'Content-Type' => 'multipart/form-data',
      }
    end

    # @return [Hash] multipart form fields (paths, IO or FormFile values)
    def get_multipart_form
      form = {}
      form['file'] = @spreadsheet
      form
    end

  end

end
