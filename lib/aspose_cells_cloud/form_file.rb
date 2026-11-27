# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="form_file.rb">
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

module Aspose
  module Cells
    module Cloud
      # A form-data file part.
      #
      # Request objects whose multipart form carries a file (e.g. `file:`, `spreadsheet:`,
      # `upload_files:`) accept any of the following for that parameter:
      #
      #   1. a local path (`String`) — the original behavior;
      #   2. a `File` / `IO` / `Tempfile` object — read at request time;
      #   3. a `FormFile` — an explicit wrapper holding a path, an IO, or raw bytes,
      #      plus an optional `filename` and `content_type`.
      #
      # Raw binary content (a byte array or a binary `String`) has no filename or path, so it
      # cannot be expressed as a bare value — wrap it in a `FormFile`:
      #
      #   FormFile.from_bytes([0x50, 0x4B, 0x03, 0x04], filename: 'Book1.xlsx')
      #   FormFile.from_io(StringIO.new(bytes), filename: 'a.xlsx')
      #   FormFile.from_path('testdata/Book1.xlsx', content_type: 'application/vnd.ms-excel')
      class FormFile
        # @return [String] MIME type sent in the part (defaults to `application/octet-stream`).
        attr_reader :content_type

        # @param path [String, nil] local file path.
        # @param io [IO, nil] readable object (`File`, `StringIO`, ...).
        # @param bytes [String, Array<Integer>, nil] raw file content.
        # @param filename [String, nil] name sent in the part; defaults to the path's basename.
        # @param content_type [String] MIME type of the part.
        def initialize(path: nil, io: nil, bytes: nil, filename: nil, content_type: 'application/octet-stream')
          raise ArgumentError, 'provide exactly one of path:, io:, or bytes:' unless [path, io, bytes].compact.length == 1
          @path = path
          @io = io
          @bytes = bytes
          @filename = filename
          @content_type = content_type
        end

        # @param path [String] local file path.
        # @return [FormFile]
        def self.from_path(path, filename: nil, content_type: 'application/octet-stream')
          new(path: path, filename: filename, content_type: content_type)
        end

        # @param io [IO] readable object (`File`, `StringIO`, ...).
        # @return [FormFile]
        def self.from_io(io, filename: nil, content_type: 'application/octet-stream')
          new(io: io, filename: filename, content_type: content_type)
        end

        # @param bytes [String, Array<Integer>] raw file content.
        # @param filename [String] name sent in the part (required — raw bytes have no path).
        # @return [FormFile]
        def self.from_bytes(bytes, filename:, content_type: 'application/octet-stream')
          new(bytes: bytes, filename: filename, content_type: content_type)
        end

        # The file name sent in the multipart part.
        #
        # @return [String]
        def filename
          @filename || File.basename(@path.to_s)
        end

        # Reads the part content as a binary `String`.
        #
        # @return [String]
        def read
          content =
            if @io
              @io.read
            elsif @path
              File.binread(@path)
            else
              @bytes
            end
          content = content.pack('C*') if content.is_a?(Array)
          content = content.to_s
          content.dup.force_encoding(Encoding::BINARY)
        end
      end
    end
  end
end
