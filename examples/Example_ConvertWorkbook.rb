# frozen_string_literal: true
# <copyright company="Aspose" file="Example_ConvertWorkbook.rb">
#   Copyright (c) 2026 Aspose.Cells Cloud
# </copyright>

# Local conversions plus cloud workbook/worksheet export.
#
# Run from this directory:
#   ruby Example_ConvertWorkbook.rb

require_relative '_common'

FOLDER = 'data'
NAME = 'EmployeeSalesSummary.xlsx'

Examples.run do
  client = Examples.client_from_env
  source = lambda do
    AsposeCellsCloud::Datasource::FilePathSource.new(Examples.data_path(NAME))
  end

  AsposeCellsCloud::Converter.convert(
    client,
    source.call,
    AsposeCellsCloud::Datasource::FilePathSink.new(
      Examples.output_path('EmployeeSalesSummary.pdf')
    ),
    AsposeCellsCloud::Converter::FORMAT_PDF
  )
  AsposeCellsCloud::Converter.convert(
    client,
    source.call,
    AsposeCellsCloud::Datasource::FilePathSink.new(
      Examples.output_path('EmployeeSalesSummary.csv')
    ),
    AsposeCellsCloud::Converter::FORMAT_CSV
  )

  Examples.ensure_folder(client, FOLDER)
  client.upload_file("#{FOLDER}/#{NAME}", Examples.data_path(NAME))

  ref = AsposeCellsCloud::WorkbookRef.new(NAME, folder: FOLDER)
  AsposeCellsCloud::Converter.workbook(
    client,
    ref,
    AsposeCellsCloud::Datasource::FilePathSink.new(
      Examples.output_path('EmployeeSalesSummary-cloud.pdf')
    ),
    AsposeCellsCloud::Converter::FORMAT_PDF
  )
  AsposeCellsCloud::Converter.worksheet(
    client,
    ref,
    'Sales',
    AsposeCellsCloud::Datasource::FilePathSink.new(
      Examples.output_path('EmployeeSalesSummary-Sales.pdf')
    ),
    AsposeCellsCloud::Converter::FORMAT_PDF
  )

  puts 'Local and cloud conversions written to examples/output/'
end
