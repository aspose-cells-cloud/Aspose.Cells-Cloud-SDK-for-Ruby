# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="dataprocessing.rb">
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
  # Data-processing facades: import, merge and split spreadsheets.
  module Dataprocessing
    extend OptionHelpers

    module_function

    # Imports XML data into a template spreadsheet at +worksheet+/+startcell+.
    def import_xml(client, datafile, template, sink, worksheet, startcell, options: nil)
      import(client, AsposeCellsCloud::ImportXMLDataIntoSpreadsheetRequest,
             datafile, template, sink, worksheet, startcell, options)
    end

    # Imports JSON data into a template spreadsheet at +worksheet+/+startcell+.
    def import_json(client, datafile, template, sink, worksheet, startcell, options: nil)
      import(client, AsposeCellsCloud::ImportJSONDataIntoSpreadsheetRequest,
             datafile, template, sink, worksheet, startcell, options)
    end

    # Imports CSV data into a template spreadsheet at +worksheet+/+startcell+.
    def import_csv(client, datafile, template, sink, worksheet, startcell, options: nil)
      import(client, AsposeCellsCloud::ImportCSVDataIntoSpreadsheetRequest,
             datafile, template, sink, worksheet, startcell, options)
    end

    # Imports data whose format the server infers into a template spreadsheet.
    def import_data(client, datafile, template, sink, worksheet, startcell, options: nil)
      import(client, AsposeCellsCloud::ImportDataIntoSpreadsheetRequest,
             datafile, template, sink, worksheet, startcell, options)
    end

    # Merges the worksheets of a local spreadsheet into one output workbook.
    #
    # Set the target format with {out_format}.
    def merge_spreadsheet(client, src, sink, options: nil)
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::MergeSpreadsheetsRequest.new(spreadsheet: data)
      response = SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # Merges a cloud spreadsheet into another cloud workbook.
    #
    # Set the target format with {out_format}.
    def merge_remote_spreadsheet(client, ref, merged_spreadsheet, sink, options: nil)
      name, folder, storage_name = SdkUtil.split_workbook_ref(ref)
      SdkUtil.require_arg(
        name && !name.to_s.empty?, 'workbook name is required'
      )
      SdkUtil.require_arg(
        merged_spreadsheet && !merged_spreadsheet.to_s.empty?,
        'merged spreadsheet name is required'
      )

      request = AsposeCellsCloud::MergeRemoteSpreadsheetRequest.new(
        merged_spreadsheet: merged_spreadsheet, name: name
      )
      response = SdkUtil.execute(
        client, request,
        [SdkUtil.workbook_options(folder, storage_name), options]
      )
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # Splits a local spreadsheet by worksheets.
    #
    # Set the target format with {out_format}; optionally scope the split with
    # {from_} and {to}.
    def split_spreadsheet(client, src, sink, options: nil)
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::SplitSpreadsheetRequest.new(spreadsheet: data)
      response = SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # Splits a cloud spreadsheet into files written under +out_path+.
    #
    # Returns the raw response so the caller can inspect the resulting file
    # list.
    def split_remote_spreadsheet(client, ref, out_path, options: nil)
      name, folder, storage_name = SdkUtil.split_workbook_ref(ref)
      SdkUtil.require_arg(
        name && !name.to_s.empty?, 'workbook name is required'
      )
      SdkUtil.require_arg(
        out_path && !out_path.to_s.empty?, 'out_path is required'
      )

      request = AsposeCellsCloud::SplitRemoteSpreadsheetRequest.new(name: name)
      SdkUtil.execute(
        client, request,
        [
          SdkUtil.workbook_options(folder, storage_name),
          common_parameter('outPath', out_path),
          options
        ]
      )
    end

    # @api private
    def import(client, request_class, datafile, template, sink,
               worksheet, startcell, options)
      SdkUtil.require_arg(
        worksheet && !worksheet.to_s.empty?, 'worksheet is required'
      )
      SdkUtil.require_arg(
        startcell && !startcell.to_s.empty?, 'start cell is required'
      )

      data = SdkUtil.read_source(datafile)
      template_data = SdkUtil.read_source(template)
      request = request_class.new(
        datafile: data,
        spreadsheet: template_data,
        startcell: startcell,
        worksheet: worksheet
      )
      response = SdkUtil.execute(
        client, request, options,
        file_fields: { 'datafile' => :datafile, 'Spreadsheet' => :spreadsheet }
      )
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # --- Option helpers ---

    # Inserts data instead of overwriting the target cells.
    def insert(value)
      common_parameter('insert', value)
    end

    # Converts imported numeric strings to numeric cell values.
    def convert_numeric_data(value)
      common_parameter('convertNumericData', value)
    end

    # Sets the column delimiter for CSV imports (default ``,``).
    def splitter(value)
      common_parameter('splitter', value)
    end

    # Sets the target format of merged or split output.
    def out_format(value)
      common_parameter('outFormat', value)
    end

    # Merges all worksheets into a single sheet.
    def merge_in_one_sheet(value)
      common_parameter('mergeInOneSheet', value)
    end

    # Starts a split at the given zero-based worksheet index.
    def from(value)
      common_parameter('from', value)
    end

    # Alias matching the Python helper name.
    def from_(value)
      common_parameter('from', value)
    end

    # Ends a split at the given zero-based worksheet index.
    def to(value)
      common_parameter('to', value)
    end

    # Sets the fonts location used for merge/split output (wire ``fontsLocation``).
    def fonts_location(value)
      common_parameter('fontsLocation', value)
    end

    # Writes the output to this cloud path instead of returning it.
    def out_path(value)
      common_parameter('outPath', value)
    end

    # Sets the cloud storage name for the output file.
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
