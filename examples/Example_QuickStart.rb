# frozen_string_literal: true
# <copyright company="Aspose" file="Example_QuickStart.rb">
#   Copyright (c) 2026 Aspose.Cells Cloud
# </copyright>

# Quick start: convert a local workbook to PDF.
#
# Run from this directory:
#   ruby Example_QuickStart.rb

require_relative '_common'

Examples.run do
  client = Examples.client_from_env
  output = Examples.output_path('EmployeeSalesSummary.pdf')

  AsposeCellsCloud::Converter.convert(
    client,
    AsposeCellsCloud::Datasource::FilePathSource.new(
      Examples.data_path('EmployeeSalesSummary.xlsx')
    ),
    AsposeCellsCloud::Datasource::FilePathSink.new(output),
    AsposeCellsCloud::Converter::FORMAT_PDF
  )

  puts "Converted EmployeeSalesSummary.xlsx to #{output}"
end
