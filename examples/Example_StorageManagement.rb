# frozen_string_literal: true
# <copyright company="Aspose" file="Example_StorageManagement.rb">
#   Copyright (c) 2026 Aspose.Cells Cloud
# </copyright>

# Cloud storage: upload, list, download and delete a file.
#
# Run from this directory:
#   ruby Example_StorageManagement.rb

require_relative '_common'

FOLDER = 'data'
REMOTE = "#{FOLDER}/Book1.xlsx"

Examples.run do
  client = Examples.client_from_env
  Examples.ensure_folder(client, FOLDER)

  client.upload_file(REMOTE, Examples.data_path('Book1.xlsx'))
  puts "Uploaded Book1.xlsx to #{REMOTE}"

  listing = Examples.do_request(
    client,
    AsposeCellsCloud::GetFilesListRequest.new(path: FOLDER)
  )
  puts "Files in the folder: #{listing.get_json}"

  downloaded = client.download_file(REMOTE)
  output = Examples.output_path('Book1-downloaded.xlsx')
  File.binwrite(output, downloaded)
  puts "Downloaded to #{output}"

  Examples.do_request(
    client,
    AsposeCellsCloud::DeleteFileRequest.new(path: REMOTE)
  )
  puts "Deleted #{REMOTE}"
end
