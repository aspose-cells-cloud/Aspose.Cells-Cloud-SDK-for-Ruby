# =============================================================================
# Aspose.Cells Cloud SDK for Ruby - File & Folder Operations
#
# Demonstrates the complete lifecycle of cloud storage operations:
#   1. Create a folder
#   2. Upload a file to the folder
#   3. Download the file
#   4. Copy the file to a new location
#   5. Delete the copied file
#   6. Delete the folder (cleanup)
#
# Prerequisites:
#   - Set ENV['CellsCloudClientId'] and ENV['CellsCloudClientSecret']
#   - Place EmployeeSalesSummary.xlsx in the same directory
# =============================================================================

require 'openssl'
require 'bundler'
require 'aspose_cells_cloud'

# ---------------------------------------------------------------------------
# Initialize the API client
# ---------------------------------------------------------------------------
@instance = AsposeCellsCloud::CellsApi.new(ENV['CellsCloudClientId'], ENV['CellsCloudClientSecret'])

# ---------------------------------------------------------------------------
# Configuration
# ---------------------------------------------------------------------------
folder_name  = 'ExampleData'
local_file   = 'EmployeeSalesSummary.xlsx'
remote_path  = "#{folder_name}/#{local_file}"

# =============================================================================
# Step 1: Create a folder in cloud storage
# =============================================================================
puts "Step 1: Creating folder '#{folder_name}'..."
create_folder_request = AsposeCellsCloud::CreateFolderRequest.new(
  :path        => folder_name,
  :storageName => ''
)
@instance.create_folder(create_folder_request)
puts "  -> Folder '#{folder_name}' created successfully."

# =============================================================================
# Step 2: Upload a file to the folder
# =============================================================================
puts "Step 2: Uploading '#{local_file}' to '#{remote_path}'..."
upload_request = AsposeCellsCloud::UploadFileRequest.new(
  :UploadFiles => local_file,
  :path        => remote_path,
  :storageName => ''
)
upload_result = @instance.upload_file(upload_request)
puts "  -> Uploaded successfully."
if upload_result && upload_result.respond_to?(:uploaded)
  upload_result.uploaded.each { |f| puts "      #{f}" }
end

# =============================================================================
# Step 3: Download the file from cloud storage
# =============================================================================
puts "Step 3: Downloading '#{remote_path}'..."
download_request = AsposeCellsCloud::DownloadFileRequest.new(
  :path        => remote_path,
  :storageName => ''
)
downloaded_file = @instance.download_file(download_request)
FileUtils.cp(downloaded_file.path, "Downloaded_#{local_file}")
puts "  -> Saved as Downloaded_#{local_file}"

# =============================================================================
# Step 4: Copy the file to a new location in cloud storage
# =============================================================================
copied_path = "#{folder_name}/Copy_of_#{local_file}"
puts "Step 4: Copying '#{remote_path}' to '#{copied_path}'..."
copy_request = AsposeCellsCloud::CopyFileRequest.new(
  :srcPath  => remote_path,
  :destPath => copied_path
)
@instance.copy_file(copy_request)
puts "  -> File copied successfully to '#{copied_path}'."

# =============================================================================
# Step 5: Delete the copied file
# =============================================================================
puts "Step 5: Deleting '#{copied_path}'..."
delete_file_request = AsposeCellsCloud::DeleteFileRequest.new(
  :path        => copied_path,
  :storageName => ''
)
@instance.delete_file(delete_file_request)
puts "  -> File '#{copied_path}' deleted successfully."

# =============================================================================
# Step 6: Delete the folder (including the original uploaded file)
# =============================================================================
puts "Step 6: Deleting folder '#{folder_name}' and all its contents..."
delete_folder_request = AsposeCellsCloud::DeleteFolderRequest.new(
  :path        => folder_name,
  :storageName => '',
  :recursive   => true
)
@instance.delete_folder(delete_folder_request)
puts "  -> Folder '#{folder_name}' deleted successfully."

puts ""
puts "All file and folder operations completed successfully."
