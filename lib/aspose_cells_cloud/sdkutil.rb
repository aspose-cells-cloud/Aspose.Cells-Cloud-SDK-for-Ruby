# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="sdkutil.rb">
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

require 'json'

require_relative 'workbook_ref'
require_relative 'datasource'
require_relative 'form_file'
require_relative 'request_adapter'
require_relative 'options'

module AsposeCellsCloud
  # Shared execution, I/O and validation helpers for the facade modules.
  module SdkUtil
    module_function

    # Raises ArgumentError unless +condition+ is truthy.
    #
    # @param condition [Object]
    # @param message [String]
    def require_arg(condition, message)
      raise ArgumentError, message unless condition
    end

    # Executes a generated request, raising SDKError on non-2xx responses.
    #
    # @param client [#execute] the SDK client (or an offline fake).
    # @param request [Object] generated request.
    # @param extra_query [Hash] implicit query parameters.
    # @param multipart [Hash, nil] replacement multipart form.
    # @return [Aspose::Cells::Cloud::RichResponse]
    # @raise [Aspose::Cells::Cloud::SDKError] on a non-2xx status.
    def do_checked(client, request, extra_query: {}, multipart: nil)
      raise ArgumentError, 'client is required' if client.nil?

      adapter = RequestAdapter.new(request, extra_query: extra_query, multipart: multipart)
      response = client.execute(adapter)

      status = response.respond_to?(:status_code) ? response.status_code : nil
      success =
        if response.respond_to?(:success?)
          response.success?
        else
          (200..299).cover?(status.to_i)
        end
      return response if success

      body = response.respond_to?(:body) ? response.body : nil
      headers = response.respond_to?(:headers) ? response.headers : nil
      raise Aspose::Cells::Cloud::SDKError.new(
        "Request failed with status #{status}",
        code: status,
        response_body: body,
        response_headers: headers
      )
    end

    # Applies facade options, then executes the request.
    #
    # @param client [#execute]
    # @param request [Object] generated request.
    # @param options [nil, Hash, Proc, Array]
    # @param file_fields [Hash, nil] multipart field name => request
    #   accessor (e.g. ``{'Spreadsheet' => :spreadsheet}``).
    # @return [Aspose::Cells::Cloud::RichResponse]
    def execute(client, request, options = nil, file_fields: nil)
      if client.nil?
        raise ArgumentError, 'client is required'
      end

      context = RequestContext.new(request)
      Options.apply_options(context, options)

      multipart = nil
      unless file_fields.nil? || file_fields.empty?
        multipart = {}
        file_fields.each do |field, accessor|
          value = request.public_send(accessor)
          next if value.nil?

          multipart[field] = file_part(value, filename: default_filename(accessor))
        end
      end

      do_checked(client, request,
                 extra_query: context.extra_query,
                 multipart: multipart)
    end

    # Normalizes a DataSource / path / bytes / IO / FormFile to a request
    # file value (raw bytes or FormFile).
    #
    # @param source [Object]
    # @return [String, Aspose::Cells::Cloud::FormFile]
    # @raise [ArgumentError]
    def read_source(source)
      raise ArgumentError, 'data source is required' if source.nil?

      if source.is_a?(Aspose::Cells::Cloud::FormFile)
        source
      elsif source.is_a?(Datasource::DataSource)
        source.read
      elsif source.is_a?(String)
        File.binread(source)
      elsif source.respond_to?(:read)
        binary(source.read)
      else
        raise ArgumentError, "unsupported data source: #{source.class}"
      end
    end

    # Writes bytes to a DataSink / path / writable stream.
    #
    # @param sink [Object]
    # @param data [String]
    # @raise [ArgumentError]
    def write_sink(sink, data)
      raise ArgumentError, 'data sink is required' if sink.nil?

      if sink.is_a?(String)
        File.binwrite(sink, data)
      elsif sink.respond_to?(:write)
        sink.write(data)
      else
        raise ArgumentError, "unsupported data sink: #{sink.class}"
      end
    end

    # Wraps a request file value in a FormFile so the client sends it as a
    # file part (raw Strings are bytes here; paths were resolved by
    # {read_source}).
    #
    # @param value [String, IO, Aspose::Cells::Cloud::FormFile]
    # @param filename [String]
    # @param content_type [String]
    # @return [Aspose::Cells::Cloud::FormFile]
    def file_part(value, filename: 'file', content_type: 'application/octet-stream')
      if value.is_a?(Aspose::Cells::Cloud::FormFile)
        value
      elsif value.is_a?(String)
        Aspose::Cells::Cloud::FormFile.from_bytes(
          value, filename: filename, content_type: content_type
        )
      elsif value.respond_to?(:read)
        value.rewind if value.respond_to?(:rewind)
        Aspose::Cells::Cloud::FormFile.from_io(
          value, filename: filename, content_type: content_type
        )
      else
        raise ArgumentError, "unsupported file value: #{value.class}"
      end
    end

    # Returns a response body as binary bytes.
    #
    # @param response [Aspose::Cells::Cloud::RichResponse]
    # @return [String]
    def response_bytes(response)
      if response.respond_to?(:to_bytes) && response.to_bytes
        return response.to_bytes
      end

      body = response.respond_to?(:body) ? response.body : nil
      binary(body.nil? ? '' : body)
    end

    # Decodes a response body as JSON.
    #
    # @param response [Aspose::Cells::Cloud::RichResponse]
    # @return [Object]
    def response_json(response)
      return response.get_json if response.respond_to?(:get_json)

      body = response.respond_to?(:body) ? response.body : nil
      JSON.parse(body.to_s)
    end

    # Normalizes a WorkbookRef / file name to (name, folder, storage_name).
    #
    # @param ref [AsposeCellsCloud::WorkbookRef, String]
    # @return [Array(String, String, String)]
    def split_workbook_ref(ref)
      case ref
      when WorkbookRef
        [ref.name, ref.folder, ref.storage_name]
      when String
        [ref, '', '']
      else
        raise ArgumentError, 'workbook must be a WorkbookRef or a file name'
      end
    end

    # Expands a workbook location into options.
    #
    # @param folder [String, nil]
    # @param storage_name [String, nil]
    # @return [Array<Proc>]
    def workbook_options(folder, storage_name)
      options = []
      if folder && !folder.to_s.empty?
        options << Options.common_parameter('folder', folder)
      end
      if storage_name && !storage_name.to_s.empty?
        options << Options.common_parameter('storageName', storage_name)
      end
      options
    end

    # Builds the multipart map for a local spreadsheet request.
    #
    # @param request [Object]
    # @return [Hash]
    def spreadsheet_fields(request)
      { 'Spreadsheet' => request.spreadsheet }
    end

    # Builds the multipart map for an import request (both files).
    #
    # @param request [Object]
    # @return [Hash]
    def import_fields(request)
      { 'datafile' => request.datafile, 'Spreadsheet' => request.spreadsheet }
    end

    # Coerces a value to a binary String.
    #
    # @param data [String, Array<Integer>, Object]
    # @return [String]
    def binary(data)
      data = data.pack('C*') if data.is_a?(Array)
      data.to_s.dup.force_encoding(Encoding::BINARY)
    end

    # @param accessor [Symbol]
    # @return [String]
    def default_filename(accessor)
      case accessor.to_sym
      when :spreadsheet
        'Spreadsheet.xlsx'
      when :datafile
        'datafile'
      else
        "#{accessor}.bin"
      end
    end
  end
end
