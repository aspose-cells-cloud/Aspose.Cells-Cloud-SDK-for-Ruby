# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="editor.rb">
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
  # Worksheet-management facades for local spreadsheets (v4.0 API).
  module Editor
    extend OptionHelpers

    # One worksheet returned by {list_worksheets}.
    class Worksheet
      # @return [String] worksheet name.
      attr_reader :name
      # @return [String] sheet type (e.g. ``Worksheet`` or ``ChartSheet``).
      attr_reader :type

      # @param name [String]
      # @param type [String]
      def initialize(name, type = '')
        @name = name
        @type = type
      end

      # @param other [Object]
      # @return [Boolean]
      def ==(other)
        other.is_a?(Worksheet) && other.name == name && other.type == type
      end
      alias eql? ==

      # @return [Integer]
      def hash
        [name, type].hash
      end
    end

    module_function

    # Adds a worksheet and writes the updated workbook to +sink+.
    #
    # Position the sheet with {position}; set its type with {sheet_type}.
    def add_worksheet(client, src, sink, sheet_name, options: nil)
      SdkUtil.require_arg(
        sheet_name && !sheet_name.to_s.empty?, 'sheet name is required'
      )
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::AddWorksheetToSpreadsheetRequest.new(
        spreadsheet: data, sheet_name: sheet_name
      )
      response = SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # Deletes a worksheet and writes the updated workbook to +sink+.
    def delete_worksheet(client, src, sink, sheet_name, options: nil)
      SdkUtil.require_arg(
        sheet_name && !sheet_name.to_s.empty?, 'sheet name is required'
      )
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::DeleteWorksheetFromSpreadsheetRequest.new(
        sheet_name: sheet_name, spreadsheet: data
      )
      response = SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # Renames a worksheet and writes the updated workbook to +sink+.
    def rename_worksheet(client, src, sink, old_name, new_name, options: nil)
      SdkUtil.require_arg(
        old_name && !old_name.to_s.empty? && new_name && !new_name.to_s.empty?,
        'old and new sheet names are required'
      )
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::RenameWorksheetInSpreadsheetRequest.new(
        source_name: old_name, spreadsheet: data, target_name: new_name
      )
      response = SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # Moves a worksheet to a zero-based position in the updated workbook.
    def move_worksheet(client, src, sink, worksheet, position, options: nil)
      SdkUtil.require_arg(
        worksheet && !worksheet.to_s.empty?, 'worksheet name is required'
      )
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::MoveWorksheetInSpreadsheetRequest.new(
        position: position, spreadsheet: data, worksheet: worksheet
      )
      response = SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # Returns the worksheets of a local spreadsheet.
    #
    # @return [Array<Worksheet>]
    def list_worksheets(client, src, options: nil)
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::GetWorksheetsWithLocalSpreadsheetRequest.new(
        spreadsheet: data
      )
      response = SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
      payload = SdkUtil.response_json(response) || []
      payload.map do |item|
        Worksheet.new(item['WorksheetName'] || '', item['SheetType'] || '')
      end
    end

    # Creates a new workbook and writes it to +sink+.
    #
    # Initialize it from a cloud template with {template}; set the output
    # format with {format}.
    def create_spreadsheet(client, sink, options: nil)
      request = AsposeCellsCloud::CreateSpreadsheetRequest.new
      response = SdkUtil.execute(client, request, options)
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # --- Option helpers ---

    # Sets the insert position of a new worksheet.
    def position(value)
      common_parameter('position', value)
    end

    # Sets the sheet type for a new worksheet (e.g. ``Worksheet``).
    def sheet_type(value)
      common_parameter('sheetType', value)
    end

    # Initializes a new workbook from a cloud template file path.
    def template(value)
      common_parameter('template', value)
    end

    # Sets the output format of a created workbook.
    def format(value)
      common_parameter('format', value)
    end

    # Writes the edited workbook to this cloud path.
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
