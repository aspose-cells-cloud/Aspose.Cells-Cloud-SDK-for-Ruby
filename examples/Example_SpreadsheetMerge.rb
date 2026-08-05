# =============================================================================
# Aspose.Cells Cloud SDK for Ruby - Spreadsheet Merging Examples
#
# Demonstrates merging multiple spreadsheet files into a single workbook
# using three approaches:
#   1. merge_spreadsheets              — upload multiple local files and merge
#   2. merge_remote_spreadsheet         — merge cloud-stored files into one
#   3. post_workbooks_merge (v3.0 API)  — merge cloud files (legacy endpoint)
#
# Prerequisites:
#   - Set ENV['CellsCloudClientId'] and ENV['CellsCloudClientSecret']
#   - Place EmployeeSalesSummary.xlsx and CompanySales.xlsx in the examples dir
# =============================================================================

require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

# ---------------------------------------------------------------------------
# Initialize the API client with credentials from environment variables
# ---------------------------------------------------------------------------
@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'])

# =============================================================================
# Approach 1: merge_spreadsheets — Merge multiple local files (direct upload)
#
# Upload two or more spreadsheet files and merge them into a single workbook.
# The :Spreadsheet parameter accepts a Hash of { filename => File } pairs.
# Set :mergeInOneSheet => true to combine all data into one worksheet.
# =============================================================================

puts "=== Approach 1: Merging local spreadsheet files ==="

# Merge two Excel files into a single workbook (each file as a separate sheet)
puts "Merging EmployeeSalesSummary.xlsx and CompanySales.xlsx..."
merge_request = AsposeCellsCloud::MergeSpreadsheetsRequest.new(
  :Spreadsheet => {
    'EmployeeSalesSummary.xlsx' => File.open('EmployeeSalesSummary.xlsx', 'r'),
    'CompanySales.xlsx'         => File.open('CompanySales.xlsx', 'r')
  },
  :outFormat => 'xlsx'
)
response = @instance.merge_spreadsheets(merge_request)
FileUtils.cp(response.path, 'Output_Merged.xlsx')
puts "  -> Saved as Output_Merged.xlsx"

# Merge two Excel files into one single-sheet workbook
puts "Merging files into a single worksheet..."
merge_single_request = AsposeCellsCloud::MergeSpreadsheetsRequest.new(
  :Spreadsheet => {
    'EmployeeSalesSummary.xlsx' => File.open('EmployeeSalesSummary.xlsx', 'r'),
    'CompanySales.xlsx'         => File.open('CompanySales.xlsx', 'r')
  },
  :outFormat        => 'xlsx',
  :mergeInOneSheet  => true
)
response = @instance.merge_spreadsheets(merge_single_request)
FileUtils.cp(response.path, 'Output_Merged_SingleSheet.xlsx')
puts "  -> Saved as Output_Merged_SingleSheet.xlsx"

# Merge and output as PDF
puts "Merging files and outputting as PDF..."
merge_pdf_request = AsposeCellsCloud::MergeSpreadsheetsRequest.new(
  :Spreadsheet => {
    'EmployeeSalesSummary.xlsx' => File.open('EmployeeSalesSummary.xlsx', 'r'),
    'CompanySales.xlsx'         => File.open('CompanySales.xlsx', 'r')
  },
  :outFormat => 'pdf'
)
response = @instance.merge_spreadsheets(merge_pdf_request)
FileUtils.cp(response.path, 'Output_Merged.pdf')
puts "  -> Saved as Output_Merged.pdf"

# =============================================================================
# Approach 2: merge_remote_spreadsheet — Merge files stored in cloud storage
#
# First upload the individual files, then merge them by name.
# The :mergedSpreadsheet parameter is a comma-separated list of file names.
# =============================================================================

puts ""
puts "=== Approach 2: Merging files in cloud storage ==="

remote_folder = 'TestData'

# Step 1: Upload source files to cloud storage
puts "Uploading source files to cloud storage..."

upload1 = AsposeCellsCloud::UploadFileRequest.new(
  :UploadFiles => 'EmployeeSalesSummary.xlsx',
  :path        => "#{remote_folder}/EmployeeSalesSummary.xlsx",
  :storageName => ''
)
@instance.upload_file(upload1)
puts "  -> Uploaded EmployeeSalesSummary.xlsx"

upload2 = AsposeCellsCloud::UploadFileRequest.new(
  :UploadFiles => 'CompanySales.xlsx',
  :path        => "#{remote_folder}/CompanySales.xlsx",
  :storageName => ''
)
@instance.upload_file(upload2)
puts "  -> Uploaded CompanySales.xlsx"

# Step 2: Merge the remote files
puts "Merging remote files..."
merge_remote_request = AsposeCellsCloud::MergeRemoteSpreadsheetRequest.new(
  :name               => 'EmployeeSalesSummary.xlsx',
  :mergedSpreadsheet  => 'CompanySales.xlsx',
  :folder             => remote_folder,
  :outFormat          => 'xlsx'
)
response = @instance.merge_remote_spreadsheet(merge_remote_request)
FileUtils.cp(response.path, 'Output_Merged_Remote.xlsx')
puts "  -> Saved as Output_Merged_Remote.xlsx"

# =============================================================================
# Approach 3: post_workbooks_merge — Merge cloud files (v3.0 API)
#
# Uses the v3.0 endpoint. Merges the content of merge_with into name.
# =============================================================================

puts ""
puts "=== Approach 3: Merging via v3.0 post_workbooks_merge ==="

puts "Merging via legacy v3.0 endpoint..."
merge_legacy_request = AsposeCellsCloud::PostWorkbooksMergeRequest.new(
  :name       => 'EmployeeSalesSummary.xlsx',
  :mergeWith  => 'CompanySales.xlsx',
  :folder     => remote_folder
)
response = @instance.post_workbooks_merge(merge_legacy_request)
puts "  -> Merge operation completed (result written to EmployeeSalesSummary.xlsx in cloud storage)"

puts ""
puts "All spreadsheet merging operations completed successfully."
