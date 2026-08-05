# =============================================================================
# Aspose.Cells Cloud SDK for Ruby - Spreadsheet Splitting Examples
#
# Demonstrates splitting a spreadsheet workbook into individual worksheet
# files using two approaches:
#   1. split_spreadsheet       — upload a local file and split directly
#   2. split_remote_spreadsheet — split a file already stored in cloud storage
#
# Each worksheet is extracted as a separate file in the specified format.
#
# Prerequisites:
#   - Set ENV['CellsCloudClientId'] and ENV['CellsCloudClientSecret']
#   - Place EmployeeSalesSummary.xlsx in the same directory
# =============================================================================

require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

# ---------------------------------------------------------------------------
# Initialize the API client with credentials from environment variables
# ---------------------------------------------------------------------------
@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'])

# =============================================================================
# Approach 1: split_spreadsheet — Split a local file directly
#
# This uploads the spreadsheet and splits it into individual worksheet files.
# Each worksheet (by index range) is returned as a separate file.
# =============================================================================

puts "=== Approach 1: Splitting a local spreadsheet file ==="

# Split all worksheets (omit :from and :to to split every sheet)
puts "Splitting all worksheets into separate XLSX files..."
request = AsposeCellsCloud::SplitSpreadsheetRequest.new(
  :Spreadsheet => 'EmployeeSalesSummary.xlsx',
  :outFormat   => 'xlsx'
)
response = @instance.split_spreadsheet(request)
FileUtils.cp(response.path, 'Output_Split_All_Sheets.zip')
puts "  -> Saved as Output_Split_All_Sheets.zip"

# Split only worksheet 1 (index 1) — extract a single sheet
puts "Splitting worksheet 1 only..."
request = AsposeCellsCloud::SplitSpreadsheetRequest.new(
  :Spreadsheet => 'EmployeeSalesSummary.xlsx',
  :from        => 1,
  :to          => 1,
  :outFormat   => 'xlsx'
)
response = @instance.split_spreadsheet(request)
FileUtils.cp(response.path, 'Output_Split_Sheet1.zip')
puts "  -> Saved as Output_Split_Sheet1.zip"

# Split worksheets 1 through 2 as PDF files
puts "Splitting worksheets 1-2 as PDF..."
request = AsposeCellsCloud::SplitSpreadsheetRequest.new(
  :Spreadsheet => 'EmployeeSalesSummary.xlsx',
  :from        => 1,
  :to          => 2,
  :outFormat   => 'pdf'
)
response = @instance.split_spreadsheet(request)
FileUtils.cp(response.path, 'Output_Split_Sheets_1_2_PDF.zip')
puts "  -> Saved as Output_Split_Sheets_1_2_PDF.zip"

# =============================================================================
# Approach 2: split_remote_spreadsheet — Split a file in cloud storage
#
# First upload the file to cloud storage, then split it remotely.
# =============================================================================

puts ""
puts "=== Approach 2: Splitting a file in cloud storage ==="

# Step 1: Upload the spreadsheet to cloud storage
remote_folder = 'TestData'
remote_path   = "#{remote_folder}/EmployeeSalesSummary.xlsx"

puts "Uploading file to cloud storage..."
upload_request = AsposeCellsCloud::UploadFileRequest.new(
  :UploadFiles => 'EmployeeSalesSummary.xlsx',
  :path        => remote_path,
  :storageName => ''
)
@instance.upload_file(upload_request)
puts "  -> Uploaded to #{remote_path}"

# Step 2: Split the remote spreadsheet
puts "Splitting remote spreadsheet..."
split_remote_request = AsposeCellsCloud::SplitRemoteSpreadsheetRequest.new(
  :name      => 'EmployeeSalesSummary.xlsx',
  :folder    => remote_folder,
  :outFormat => 'pdf'
)
response = @instance.split_remote_spreadsheet(split_remote_request)
FileUtils.cp(response.path, 'Output_Split_Remote.zip')
puts "  -> Saved as Output_Split_Remote.zip"

puts ""
puts "All spreadsheet splitting operations completed successfully."
