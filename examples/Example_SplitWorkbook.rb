# frozen_string_literal: true
# <copyright company="Aspose" file="Example_SplitWorkbook.rb">
#   Copyright (c) 2026 Aspose.Cells Cloud
# </copyright>

# Split a workbook locally (zip result) and into a cloud folder.
#
# Run from this directory:
#   ruby Example_SplitWorkbook.rb

require_relative '_common'

FOLDER = 'RubySDKExamples'
NAME = 'EmployeeSalesSummary.xlsx'
OUT_FOLDER = "#{FOLDER}/Split"

Examples.run do
  client = Examples.client_from_env

  AsposeCellsCloud::Dataprocessing.split_spreadsheet(
    client,
    AsposeCellsCloud::Datasource::FilePathSource.new(Examples.data_path(NAME)),
    AsposeCellsCloud::Datasource::FilePathSink.new(
      Examples.output_path('EmployeeSalesSummary-split.zip')
    ),
    options: [
      AsposeCellsCloud::Dataprocessing.out_format('pdf'),
      AsposeCellsCloud::Dataprocessing.to(3)
    ]
  )
  puts 'Local split zip written to examples/output/'

  Examples.ensure_folder(client, FOLDER)
  Examples.ensure_folder(client, OUT_FOLDER)
  client.upload_file("#{FOLDER}/#{NAME}", Examples.data_path(NAME))

  response = AsposeCellsCloud::Dataprocessing.split_remote_spreadsheet(
    client,
    AsposeCellsCloud::WorkbookRef.new(NAME, folder: FOLDER),
    OUT_FOLDER,
    options: [
      AsposeCellsCloud::Dataprocessing.out_format('pdf'),
      AsposeCellsCloud::Dataprocessing.to(3)
    ]
  )
  puts "Cloud split result: #{response.get_json}"
end
