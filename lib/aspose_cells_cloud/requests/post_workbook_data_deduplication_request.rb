=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostWorkbookDataDeduplicationRequest.rb">
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

  class PostWorkbookDataDeduplicationRequest < Aspose::Cells::Cloud::RequestOption
    # @return [DeduplicationRegion]
    attr_accessor :deduplication_region
    # @return [String]
    attr_accessor :name
    # @return [BOOLEAN, nil when omitted]
    attr_accessor :check_excel_restriction
    # @return [String, nil when omitted]
    attr_accessor :folder
    # @return [String, nil when omitted]
    attr_accessor :password
    # @return [String, nil when omitted]
    attr_accessor :region
    # @return [String, nil when omitted]
    attr_accessor :storage_name

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(deduplication_region:, name:, check_excel_restriction: nil, folder: nil, password: nil, region: nil, storage_name: nil)
      raise ArgumentError, 'Missing the required parameter `deduplication_region` when calling `PostWorkbookDataDeduplicationRequest.new`' if deduplication_region.nil?
      raise ArgumentError, 'Missing the required parameter `name` when calling `PostWorkbookDataDeduplicationRequest.new`' if name.nil?
      @deduplication_region = deduplication_region
      @name = name
      @check_excel_restriction = check_excel_restriction
      @folder = folder
      @password = password
      @region = region
      @storage_name = storage_name
    end

    # @return [String] HTTP method for this operation
    def get_method
      'POST'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/{name}/datadeduplication'
      path = path.gsub('{name}', encode_path_segment(@name))
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['folder'] = @folder unless @folder.nil?
      query['storageName'] = @storage_name unless @storage_name.nil?
      query['password'] = @password unless @password.nil?
      query['region'] = @region unless @region.nil?
      query['checkExcelRestriction'] = @check_excel_restriction unless @check_excel_restriction.nil?
      query
    end

    # @return [Hash] default headers for this operation
    def get_header_parameters
      {
        'Accept' => 'application/json',
        'Content-Type' => 'application/json',
      }
    end

    # @return [Hash, Array, nil] JSON body (models are converted via to_hash)
    def get_json_body
      return nil if @deduplication_region.nil?
      if @deduplication_region.is_a?(Array)
        @deduplication_region.map { |item| item.respond_to?(:to_hash) ? item.to_hash : item }
      elsif @deduplication_region.respond_to?(:to_hash)
        @deduplication_region.to_hash
      else
        @deduplication_region
      end
    end

  end

end
