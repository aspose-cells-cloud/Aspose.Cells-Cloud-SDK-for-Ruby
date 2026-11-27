# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="datacleansing.rb">
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

require_relative 'sdkutil'

module AsposeCellsCloud
  # Data-cleansing facades: remove blank rows, columns, sheets and duplicates.
  module Datacleansing
    extend OptionHelpers

    module_function

    # Removes blank rows and writes the cleaned workbook to +sink+.
    def remove_blank_rows(client, src, sink, options: nil)
      cleanse(client, src, sink, AsposeCellsCloud::RemoveSpreadsheetBlankRowsRequest, options)
    end

    # Removes blank columns and writes the cleaned workbook to +sink+.
    def remove_blank_columns(client, src, sink, options: nil)
      cleanse(client, src, sink, AsposeCellsCloud::RemoveSpreadsheetBlankColumnsRequest, options)
    end

    # Removes blank worksheets and writes the cleaned workbook to +sink+.
    def remove_blank_worksheets(client, src, sink, options: nil)
      cleanse(client, src, sink, AsposeCellsCloud::RemoveSpreadsheetBlankWorksheetsRequest, options)
    end

    # Removes duplicate rows and writes the cleaned workbook to +sink+.
    def remove_duplicates(client, src, sink, options: nil)
      cleanse(client, src, sink, AsposeCellsCloud::RemoveDuplicatesRequest, options)
    end

    # @api private
    def cleanse(client, src, sink, request_class, options)
      data = SdkUtil.read_source(src)
      request = request_class.new(spreadsheet: data)
      response = SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # --- Option helpers ---

    # Scopes duplicate removal to one worksheet.
    def worksheet(value)
      common_parameter('worksheet', value)
    end

    # Scopes duplicate removal to one cell range (A1 style, e.g. ``A1:D20``).
    def range(value)
      common_parameter('range', value)
    end

    # Alias avoiding a bare ``range`` where a local variable of that name exists.
    def range_(value)
      common_parameter('range', value)
    end

    # Scopes duplicate removal to a named table.
    def table(value)
      common_parameter('table', value)
    end

    # Writes the cleaned workbook to this cloud path.
    def out_path(value)
      common_parameter('outPath', value)
    end

    # Sets the cloud storage name for the output workbook.
    def out_storage_name(value)
      common_parameter('outStorageName', value)
    end

    # Sets the workbook open password.
    def password(value)
      common_parameter('password', value)
    end

    # Sets the region.
    def region(value)
      common_parameter('region', value)
    end
  end
end
