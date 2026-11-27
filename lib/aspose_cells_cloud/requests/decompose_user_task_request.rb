=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="DecomposeUserTaskRequest.rb">
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

  class DecomposeUserTaskRequest < Aspose::Cells::Cloud::RequestOption
    # @return [String]
    attr_accessor :task_description
    # @return [String, nil when omitted]
    attr_accessor :password
    # @return [String, nil when omitted]
    attr_accessor :region

    # @raise [ArgumentError] when a required parameter is missing or nil
    def initialize(task_description:, password: nil, region: nil)
      raise ArgumentError, 'Missing the required parameter `task_description` when calling `DecomposeUserTaskRequest.new`' if task_description.nil?
      @task_description = task_description
      @password = password
      @region = region
    end

    # @return [String] HTTP method for this operation
    def get_method
      'PUT'
    end

    # @return [String] versioned request path with placeholders substituted
    def get_path
      path = '/v4.0/cells/ai/task/decompose'
      path
    end

    # @return [Hash] query parameters (required plus present optional)
    def get_query_parameters
      query = {}
      query['region'] = @region unless @region.nil?
      query['password'] = @password unless @password.nil?
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
      return nil if @task_description.nil?
      if @task_description.is_a?(Array)
        @task_description.map { |item| item.respond_to?(:to_hash) ? item.to_hash : item }
      elsif @task_description.respond_to?(:to_hash)
        @task_description.to_hash
      else
        @task_description
      end
    end

  end

end
