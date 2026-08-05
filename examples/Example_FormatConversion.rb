# =============================================================================
# Aspose.Cells Cloud SDK for Ruby - Format Conversion Examples
#
# Demonstrates converting spreadsheet files between various formats using
# the convert_spreadsheet API. Supported target formats include:
#   PDF, XLSX, XLS, CSV, HTML, JSON, ODS, PNG, SVG, TIFF, and more.
#
# Prerequisites:
#   - Set ENV['CellsCloudClientId'] and ENV['CellsCloudClientSecret']
#   - Place source files in the same directory or provide absolute paths
# =============================================================================

require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

# ---------------------------------------------------------------------------
# Initialize the API client with credentials from environment variables
# ---------------------------------------------------------------------------
@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'])

# ---------------------------------------------------------------------------
# 1. Convert Excel (XLSX) to PDF
# ---------------------------------------------------------------------------
puts "Converting Excel to PDF..."
request = AsposeCellsCloud::ConvertSpreadsheetRequest.new(
  :Spreadsheet => 'EmployeeSalesSummary.xlsx',
  :format      => 'pdf'
)
response = @instance.convert_spreadsheet(request)
FileUtils.cp(response.path, 'Output_Converted.pdf')
puts "  -> Saved as Output_Converted.pdf"

# ---------------------------------------------------------------------------
# 2. Convert Excel (XLSX) to CSV
# ---------------------------------------------------------------------------
puts "Converting Excel to CSV..."
request = AsposeCellsCloud::ConvertSpreadsheetRequest.new(
  :Spreadsheet => 'EmployeeSalesSummary.xlsx',
  :format      => 'csv'
)
response = @instance.convert_spreadsheet(request)
FileUtils.cp(response.path, 'Output_Converted.csv')
puts "  -> Saved as Output_Converted.csv"

# ---------------------------------------------------------------------------
# 3. Convert Excel (XLSX) to HTML
# ---------------------------------------------------------------------------
puts "Converting Excel to HTML..."
request = AsposeCellsCloud::ConvertSpreadsheetRequest.new(
  :Spreadsheet => 'EmployeeSalesSummary.xlsx',
  :format      => 'html'
)
response = @instance.convert_spreadsheet(request)
FileUtils.cp(response.path, 'Output_Converted.html')
puts "  -> Saved as Output_Converted.html"

# ---------------------------------------------------------------------------
# 4. Convert Excel (XLSX) to JSON
# ---------------------------------------------------------------------------
puts "Converting Excel to JSON..."
request = AsposeCellsCloud::ConvertSpreadsheetRequest.new(
  :Spreadsheet => 'EmployeeSalesSummary.xlsx',
  :format      => 'json'
)
response = @instance.convert_spreadsheet(request)
FileUtils.cp(response.path, 'Output_Converted.json')
puts "  -> Saved as Output_Converted.json"

# ---------------------------------------------------------------------------
# 5. Convert Excel (XLSX) to ODS (OpenDocument Spreadsheet)
# ---------------------------------------------------------------------------
puts "Converting Excel to ODS..."
request = AsposeCellsCloud::ConvertSpreadsheetRequest.new(
  :Spreadsheet => 'EmployeeSalesSummary.xlsx',
  :format      => 'ods'
)
response = @instance.convert_spreadsheet(request)
FileUtils.cp(response.path, 'Output_Converted.ods')
puts "  -> Saved as Output_Converted.ods"

# ---------------------------------------------------------------------------
# 6. Convert Excel to PNG (spreadsheet rendered as image)
# ---------------------------------------------------------------------------
puts "Converting Excel to PNG..."
request = AsposeCellsCloud::ConvertSpreadsheetRequest.new(
  :Spreadsheet => 'EmployeeSalesSummary.xlsx',
  :format      => 'png'
)
response = @instance.convert_spreadsheet(request)
FileUtils.cp(response.path, 'Output_Converted.png')
puts "  -> Saved as Output_Converted.png"

# ---------------------------------------------------------------------------
# 7. Convert password-protected Excel to PDF
# ---------------------------------------------------------------------------
# puts "Converting password-protected Excel to PDF..."
# request = AsposeCellsCloud::ConvertSpreadsheetRequest.new(
#   :Spreadsheet => 'ProtectedFile.xlsx',
#   :format      => 'pdf',
#   :password    => 'your_password_here'
# )
# response = @instance.convert_spreadsheet(request)
# FileUtils.cp(response.path, 'Output_Protected.pdf')
# puts "  -> Saved as Output_Protected.pdf"

puts ""
puts "All format conversions completed successfully."
