# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="converter.rb">
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
  # Spreadsheet conversion and export facades.
  #
  # Example:
  #
  #   client = Aspose::Cells::Cloud::AsposeCellsCloudClient.new(id, secret)
  #   source = AsposeCellsCloud::Datasource::FilePathSource.new('Book1.xlsx')
  #   sink = AsposeCellsCloud::Datasource::FilePathSink.new('Book1.pdf')
  #   AsposeCellsCloud::Converter.convert_to_pdf(client, source, sink)
  module Converter
    extend OptionHelpers

    FORMAT_XLSX = 'xlsx'
    FORMAT_XLS = 'xls'
    FORMAT_XLSB = 'xlsb'
    FORMAT_ODS = 'ods'
    FORMAT_PDF = 'pdf'
    FORMAT_CSV = 'csv'
    FORMAT_TSV = 'tsv'
    FORMAT_JSON = 'json'
    FORMAT_HTML = 'html'
    FORMAT_XML = 'xml'
    FORMAT_MD = 'md'
    FORMAT_SVG = 'svg'
    FORMAT_PNG = 'png'
    FORMAT_JPEG = 'jpeg'
    FORMAT_DOCX = 'docx'
    FORMAT_PPTX = 'pptx'
    FORMAT_SQL = 'sql'
    FORMAT_TXT = 'txt'

    module_function

    # Converts a local spreadsheet to +format+ and writes the result to +sink+.
    #
    # Uses ``PUT /v4.0/cells/convert/spreadsheet``.
    #
    # @param client [#execute] SDK client or offline fake.
    # @param src [Object] local path, IO, FormFile or Datasource::DataSource.
    # @param sink [Object] local path, IO or Datasource::DataSink.
    # @param format [String] target format (see FORMAT_* constants).
    # @param options [nil, Hash, Proc, Array]
    # @return [void]
    def convert(client, src, sink, format, options: nil)
      SdkUtil.require_arg(
        format && !format.to_s.empty?, 'format is required'
      )
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::ConvertSpreadsheetRequest.new(
        format: format, spreadsheet: data
      )
      response = SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # Converts a spreadsheet to PDF.
    def convert_to_pdf(client, src, sink, options: nil)
      convert(client, src, sink, FORMAT_PDF, options: options)
    end

    # Converts a spreadsheet to CSV.
    def convert_to_csv(client, src, sink, options: nil)
      convert(client, src, sink, FORMAT_CSV, options: options)
    end

    # Converts a spreadsheet to JSON.
    def convert_to_json(client, src, sink, options: nil)
      convert(client, src, sink, FORMAT_JSON, options: options)
    end

    # Converts a spreadsheet to HTML.
    def convert_to_html(client, src, sink, options: nil)
      convert(client, src, sink, FORMAT_HTML, options: options)
    end

    # Converts a spreadsheet to XLSX.
    def convert_to_xlsx(client, src, sink, options: nil)
      convert(client, src, sink, FORMAT_XLSX, options: options)
    end

    # Converts a spreadsheet to PNG.
    def convert_to_png(client, src, sink, options: nil)
      convert(client, src, sink, FORMAT_PNG, options: options)
    end

    # Converts a spreadsheet to DOCX.
    def convert_to_docx(client, src, sink, options: nil)
      convert(client, src, sink, FORMAT_DOCX, options: options)
    end

    # Converts a spreadsheet to SQL.
    def convert_to_sql(client, src, sink, options: nil)
      convert(client, src, sink, FORMAT_SQL, options: options)
    end

    # Exports a cloud workbook to +format+ and writes the result to +sink+.
    #
    # +ref+ is a WorkbookRef or a cloud file name.
    # Uses ``GET /v4.0/cells/{name}``.
    def workbook(client, ref, sink, format, options: nil)
      name, folder, storage_name = SdkUtil.split_workbook_ref(ref)
      SdkUtil.require_arg(
        name && !name.to_s.empty?, 'workbook name is required'
      )
      SdkUtil.require_arg(
        format && !format.to_s.empty?, 'format is required'
      )

      request = AsposeCellsCloud::ExportSpreadsheetAsFormatRequest.new(
        format: format, name: name
      )
      response = SdkUtil.execute(
        client, request,
        [SdkUtil.workbook_options(folder, storage_name), options]
      )
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # Exports one worksheet of a cloud workbook to +format+.
    #
    # Uses ``GET /v4.0/cells/{name}/worksheets/{worksheet}``.
    def worksheet(client, ref, worksheet_name, sink, format, options: nil)
      name, folder, storage_name = SdkUtil.split_workbook_ref(ref)
      SdkUtil.require_arg(
        name && !name.to_s.empty?, 'workbook name is required'
      )
      SdkUtil.require_arg(
        worksheet_name && !worksheet_name.to_s.empty?, 'worksheet name is required'
      )
      SdkUtil.require_arg(
        format && !format.to_s.empty?, 'format is required'
      )

      request = AsposeCellsCloud::ExportWorksheetAsFormatRequest.new(
        format: format, name: name, worksheet: worksheet_name
      )
      response = SdkUtil.execute(
        client, request,
        [SdkUtil.workbook_options(folder, storage_name), options]
      )
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # Aliases matching the operation names used in the Go facade.
    def workbook_export(client, ref, sink, format, options: nil)
      workbook(client, ref, sink, format, options: options)
    end

    def worksheet_export(client, ref, worksheet_name, sink, format, options: nil)
      worksheet(client, ref, worksheet_name, sink, format, options: options)
    end

    # --- Conversion / export option helpers ---

    # Sets the workbook open password.
    def password(value)
      common_parameter('password', value)
    end

    # Sets the region.
    def region(value)
      common_parameter('region', value)
    end

    # Sets the location of the fonts used for conversion (wire ``FontsLocation``).
    def fonts_location(value)
      common_parameter('FontsLocation', value)
    end

    # Writes the output file to this cloud path instead of returning it.
    def out_path(value)
      common_parameter('outPath', value)
    end

    # Sets the cloud storage name for the output file.
    def out_storage_name(value)
      common_parameter('outStorageName', value)
    end

    # Sets the cloud storage name that contains the workbook.
    def storage_name(value)
      common_parameter('storageName', value)
    end

    # Sets the cloud folder that contains the workbook.
    def folder(value)
      common_parameter('folder', value)
    end

    # Fits rows automatically before conversion.
    def auto_rows_fit(value)
      common_parameter('AutoRowsFit', value)
    end

    # Fits columns automatically before conversion.
    def auto_columns_fit(value)
      common_parameter('AutoColumnsFit', value)
    end

    # Checks the Excel restriction before conversion.
    def check_excel_restriction(value)
      common_parameter('checkExcelRestriction', value)
    end

    # Fits each worksheet onto one page for PDF output.
    def one_page_per_sheet(value)
      common_parameter('onePagePerSheet', value)
    end

    # Attaches a SaveOptions model or Hash to the request.
    def save_options(value)
      Options.save_options(value)
    end
  end
end
