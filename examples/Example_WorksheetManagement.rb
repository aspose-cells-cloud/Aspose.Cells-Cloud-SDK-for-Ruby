# frozen_string_literal: true
# <copyright company="Aspose" file="Example_WorksheetManagement.rb">
#   Copyright (c) 2026 Aspose.Cells Cloud
# </copyright>

# Create a workbook and add/rename/list worksheets.
#
# Run from this directory:
#   ruby Example_WorksheetManagement.rb

require_relative '_common'

Examples.run do
  client = Examples.client_from_env
  created = Examples.output_path('created.xlsx')
  added = Examples.output_path('created-with-summary.xlsx')
  renamed = Examples.output_path('created-renamed.xlsx')

  AsposeCellsCloud::Editor.create_spreadsheet(
    client,
    AsposeCellsCloud::Datasource::FilePathSink.new(created)
  )
  AsposeCellsCloud::Editor.add_worksheet(
    client,
    AsposeCellsCloud::Datasource::FilePathSource.new(created),
    AsposeCellsCloud::Datasource::FilePathSink.new(added),
    'Summary'
  )
  AsposeCellsCloud::Editor.rename_worksheet(
    client,
    AsposeCellsCloud::Datasource::FilePathSource.new(added),
    AsposeCellsCloud::Datasource::FilePathSink.new(renamed),
    'Summary',
    'Overview'
  )

  sheets = AsposeCellsCloud::Editor.list_worksheets(
    client,
    AsposeCellsCloud::Datasource::FilePathSource.new(renamed)
  )
  puts "Worksheets: #{sheets.map { |sheet| [sheet.name, sheet.type] }}"
end
