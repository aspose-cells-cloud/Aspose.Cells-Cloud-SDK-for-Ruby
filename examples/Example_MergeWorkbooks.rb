# frozen_string_literal: true
# <copyright company="Aspose" file="Example_MergeWorkbooks.rb">
#   Copyright (c) 2026 Aspose.Cells Cloud
# </copyright>

# Merge the worksheets of one workbook locally, and merge cloud workbooks.
#
# Run from this directory:
#   ruby Example_MergeWorkbooks.rb

require_relative '_common'

FOLDER = 'data'

Examples.run do
  client = Examples.client_from_env

  AsposeCellsCloud::Dataprocessing.merge_spreadsheet(
    client,
    AsposeCellsCloud::Datasource::FilePathSource.new(
      Examples.data_path('EmployeeSalesSummary.xlsx')
    ),
    AsposeCellsCloud::Datasource::FilePathSink.new(
      Examples.output_path('EmployeeSalesSummary-merged.xlsx')
    ),
    options: AsposeCellsCloud::Dataprocessing.out_format('xlsx')
  )
  puts 'Local merge written to examples/output/'

  Examples.ensure_folder(client, FOLDER)
  %w[Book1.xlsx BookText.xlsx].each do |name|
    client.upload_file("#{FOLDER}/#{name}", Examples.data_path(name))
  end

  Examples.do_request(
    client,
    AsposeCellsCloud::PostWorkbooksMergeRequest.new(
      merge_with: "#{FOLDER}/BookText.xlsx",
      name: 'Book1.xlsx',
      folder: FOLDER
    )
  )

  merged = client.download_file("#{FOLDER}/Book1.xlsx")
  output = Examples.output_path('Book1-merged.xlsx')
  File.binwrite(output, merged)
  puts "Cloud merge written to #{output}"
end
