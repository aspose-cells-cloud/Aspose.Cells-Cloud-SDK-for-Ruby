# frozen_string_literal: true
# <copyright company="Aspose" file="Example_GetWorksheetCell.rb">
#   Copyright (c) 2026 Aspose.Cells Cloud
# </copyright>

# Read one cell from a cloud workbook (generated request class).
#
# Run from this directory:
#   ruby Example_GetWorksheetCell.rb

require_relative '_common'

FOLDER = 'data'
NAME = 'Book1.xlsx'

Examples.run do
  client = Examples.client_from_env
  Examples.ensure_folder(client, FOLDER)
  client.upload_file("#{FOLDER}/#{NAME}", Examples.data_path(NAME))

  response = Examples.do_request(
    client,
    AsposeCellsCloud::GetWorksheetCellRequest.new(
      cell_or_method_name: 'A1',
      name: NAME,
      sheet_name: 'Sheet1',
      folder: FOLDER
    )
  )
  puts "Cell A1: #{response.get_json}"
end
