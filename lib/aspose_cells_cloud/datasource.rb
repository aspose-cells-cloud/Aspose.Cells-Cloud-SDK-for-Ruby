# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="datasource.rb">
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

require 'net/http'
require 'uri'

require_relative 'sdk_error'

module AsposeCellsCloud
  # Data sources and sinks used by the convenience facade modules.
  #
  # This namespace is named ``Datasource`` (not ``DataSource``) because
  # ``AsposeCellsCloud::DataSource`` is a generated model class.
  module Datasource
    # A readable source of spreadsheet bytes.
    class DataSource
      # @return [String] the source content as binary bytes.
      def read
        raise NotImplementedError, "#{self.class} must implement #read"
      end
    end

    # A writable destination for spreadsheet bytes.
    class DataSink
      # @param data [String] binary bytes.
      def write(_data)
        raise NotImplementedError, "#{self.class} must implement #write"
      end
    end

    # Reads a spreadsheet from a local file path.
    class FilePathSource < DataSource
      # @return [String] local path.
      attr_reader :path

      # @param path [String]
      def initialize(path)
        @path = path.to_s
      end

      # @return [String] binary bytes.
      def read
        File.binread(@path)
      end
    end

    # Reads a spreadsheet from in-memory bytes.
    class BytesSource < DataSource
      # @param data [String, Array<Integer>]
      def initialize(data)
        data = data.pack('C*') if data.is_a?(Array)
        @data = data.to_s.dup.force_encoding(Encoding::BINARY)
      end

      # @return [String] binary bytes.
      def read
        @data.dup
      end
    end

    # Reads a spreadsheet from a caller-owned readable stream.
    #
    # The stream stays open after {#read} (the caller owns it).
    class ReaderSource < DataSource
      # @return [IO] the caller-owned stream.
      attr_reader :reader

      # @param reader [IO]
      def initialize(reader)
        @reader = reader
      end

      # @return [String] binary bytes.
      def read
        data = @reader.read
        data = data.pack('C*') if data.is_a?(Array)
        data.to_s.dup.force_encoding(Encoding::BINARY)
      end
    end

    # Writes the result to a local file path.
    class FilePathSink < DataSink
      # @return [String] local path.
      attr_reader :path

      # @param path [String]
      def initialize(path)
        @path = path.to_s
      end

      # @param data [String] binary bytes.
      def write(data)
        File.binwrite(@path, data)
      end
    end

    # Collects the result in memory.
    class BytesSink < DataSink
      def initialize
        @buffer = ''.b
      end

      # @param data [String] binary bytes.
      def write(data)
        @buffer << data.to_s.b
        nil
      end

      # @return [String] the collected bytes.
      def value
        @buffer.dup
      end

      # @return [String] the collected bytes.
      def to_bytes
        value
      end
    end

    # Uploads the result with an HTTP PUT to a URL.
    #
    # Useful for pre-signed cloud-storage URLs. A non-2xx response raises
    # {Aspose::Cells::Cloud::SDKError}.
    class UrlPathSink < DataSink
      # @return [String] target URL.
      attr_reader :url
      # @return [String] Content-Type sent with the PUT.
      attr_reader :content_type
      # @return [Integer, nil] open/read timeout in seconds.
      attr_reader :timeout

      # @param url [String]
      # @param content_type [String]
      # @param timeout [Integer, nil]
      def initialize(url, content_type: 'application/octet-stream', timeout: nil)
        @url = url
        @content_type = content_type
        @timeout = timeout
      end

      # @param data [String] binary bytes.
      # @raise [Aspose::Cells::Cloud::SDKError] on a non-2xx response.
      def write(data)
        uri = URI.parse(@url)
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = uri.scheme == 'https'
        http.open_timeout = @timeout if @timeout
        http.read_timeout = @timeout if @timeout

        request = Net::HTTP::Put.new(uri.request_uri)
        request['Content-Type'] = @content_type
        request.body = data.to_s.b
        response = http.request(request)

        code = response.code.to_i
        return nil if (200..299).cover?(code)

        raise Aspose::Cells::Cloud::SDKError.new(
          "Upload to URL failed with status #{code}",
          code: code,
          response_body: response.body
        )
      end
    end
  end
end
