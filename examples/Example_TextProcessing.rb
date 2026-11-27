# frozen_string_literal: true
# <copyright company="Aspose" file="Example_TextProcessing.rb">
#   Copyright (c) 2026 Aspose.Cells Cloud
# </copyright>

# Replace text in a local workbook and in a cloud workbook.
#
# Run from this directory:
#   ruby Example_TextProcessing.rb

require_relative '_common'

FOLDER = 'RubySDKExamples'
NAME = 'BookText.xlsx'

Examples.run do
  client = Examples.client_from_env

  AsposeCellsCloud::Searcher.replace(
    client,
    AsposeCellsCloud::Datasource::FilePathSource.new(Examples.data_path(NAME)),
    AsposeCellsCloud::Datasource::FilePathSink.new(
      Examples.output_path('BookText-replaced.xlsx')
    ),
    'Bike',
    'Cycling'
  )
  puts 'Local replacement written to examples/output/'

  Examples.ensure_folder(client, FOLDER)
  client.upload_file("#{FOLDER}/#{NAME}", Examples.data_path(NAME))
  AsposeCellsCloud::Searcher.replace_workbook(
    client,
    AsposeCellsCloud::WorkbookRef.new(NAME, folder: FOLDER),
    'Bike',
    'Cycling'
  )

  updated = client.download_file("#{FOLDER}/#{NAME}")
  output = Examples.output_path('BookText-cloud-replaced.xlsx')
  File.binwrite(output, updated)
  puts "Cloud replacement downloaded to #{output}"
end
