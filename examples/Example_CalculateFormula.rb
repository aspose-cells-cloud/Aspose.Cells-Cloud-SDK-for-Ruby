# frozen_string_literal: true
# <copyright company="Aspose" file="Example_CalculateFormula.rb">
#   Copyright (c) 2026 Aspose.Cells Cloud
# </copyright>

# Calculate formulas in a cloud workbook (generated request class).
#
# Run from this directory:
#   ruby Example_CalculateFormula.rb

require_relative '_common'

FOLDER = 'RubySDKExamples'
NAME = 'Book1.xlsx'

Examples.run do
  client = Examples.client_from_env
  Examples.ensure_folder(client, FOLDER)
  client.upload_file("#{FOLDER}/#{NAME}", Examples.data_path(NAME))

  response = Examples.do_request(
    client,
    AsposeCellsCloud::PostWorkbookCalculateFormulaRequest.new(
      name: NAME,
      folder: FOLDER
    )
  )
  puts "Calculate formula: #{response.get_json}"
end
