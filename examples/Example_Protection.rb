# frozen_string_literal: true
# <copyright company="Aspose" file="Example_Protection.rb">
#   Copyright (c) 2026 Aspose.Cells Cloud
# </copyright>

# Protect and unprotect a cloud workbook.
#
# Run from this directory:
#   ruby Example_Protection.rb

require_relative '_common'

FOLDER = 'data'
NAME = 'Book1.xlsx'
PASSWORD = 'ExampleSecret123!'

Examples.run do
  client = Examples.client_from_env
  Examples.ensure_folder(client, FOLDER)
  client.upload_file("#{FOLDER}/#{NAME}", Examples.data_path(NAME))

  protect = AsposeCellsCloud::PostProtectWorkbookRequest.new(
    name: NAME,
    folder: FOLDER,
    protect_workbook_request: AsposeCellsCloud::ProtectWorkbookRequest.new(
      protect_all_sheets: AsposeCellsCloud::Protection.new(password: PASSWORD),
      protect_workbook_structure: 'All',
      encrypt_with_password: PASSWORD
    )
  )
  Examples.do_request(client, protect)
  puts 'Protected all sheets and the workbook structure.'

  unprotect = AsposeCellsCloud::DeleteUnProtectWorkbookRequest.new(
    name: NAME,
    password: PASSWORD,
    folder: FOLDER
  )
  Examples.do_request(client, unprotect)
  puts 'Removed the workbook protection.'
end
