=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PostBatchSplitRequest.rb">
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

  class PostBatchSplitRequest < Aspose::Cells::Cloud::RequestOption
    # @return [BatchSplitRequest]
    attr_accessor :batch_split_request

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(batch_split_request:)
      raise ArgumentError, 'Missing the required parameter `batch_split_request` when calling `PostBatchSplitRequest.new`' if batch_split_request.nil?
      @batch_split_request = batch_split_request
    end

    # @return [String] HTTP method for this operation
    def get_method
      'POST'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v3.0/cells/batch/split'
      path
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
      return nil if @batch_split_request.nil?
      if @batch_split_request.is_a?(Array)
        @batch_split_request.map { |item| item.respond_to?(:to_hash) ? item.to_hash : item }
      elsif @batch_split_request.respond_to?(:to_hash)
        @batch_split_request.to_hash
      else
        @batch_split_request
      end
    end

  end

end
