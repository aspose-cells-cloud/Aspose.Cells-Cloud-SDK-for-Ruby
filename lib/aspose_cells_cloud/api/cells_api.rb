=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="CellsApi.cs">
   Copyright (c) 2026 Aspose.Cells Cloud
 </copyright>
 <summary>
   Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
 </summary>
--------------------------------------------------------------------------------------------------------------------
=end


require "uri"

module AsposeCellsCloud
  class CellsApi
    attr_accessor :api_client

    def initialize(client_id,client_secret, app_version = 'v3.0', app_host = 'api.aspose.cloud',  api_client = ApiClient.default)
      @api_client = api_client
      @api_client.config.client_secret = client_secret
      @api_client.config.client_id = client_id
      @api_client.config.api_version = app_version
      @api_client.config.host = app_host
    end

    # AI task decomposition: Convert user objectives to sequential action plans with formatted file export.

    def decompose_user_task( decompose_user_task_request, opts = {})

       data, _status_code, _headers = decompose_user_task_request.create_http_request(@api_client,opts )
       return data
    end

    # Translates the entire spreadsheet to the specified target language.

    def translate_spreadsheet( translate_spreadsheet_request, opts = {})

       data, _status_code, _headers = translate_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Translates text file content to the specified target language.

    def translate_text_file( translate_text_file_request, opts = {})

       data, _status_code, _headers = translate_text_file_request.create_http_request(@api_client,opts )
       return data
    end

    # The Aggregate by Color API provides a convenient way to perform calculations on cells that share the same fill or font color. This API supports a range of aggregate operations, including count, sum, maximum value, minimum value, and average value, enabling you to analyze and summarize data based on color distinctions.

    def aggregate_cells_by_color( aggregate_cells_by_color_request, opts = {})

       data, _status_code, _headers = aggregate_cells_by_color_request.create_http_request(@api_client,opts )
       return data
    end


    def math_calculate( math_calculate_request, opts = {})

       data, _status_code, _headers = math_calculate_request.create_http_request(@api_client,opts )
       return data
    end

    # Get Access Token Result: The Cells Cloud Get Token API acts as a proxy service,
    # forwarding user requests to the Aspose Cloud authentication server and returning the resulting access token to the client.

    def post_access_token( post_access_token_request, opts = {})

       data, _status_code, _headers = post_access_token_request.create_http_request(@api_client,opts )
       return data
    end

    # Check the Health Status of Aspose.Cells Cloud Service.

    def get_aspose_cells_cloud_status( get_aspose_cells_cloud_status_request, opts = {})

       data, _status_code, _headers = get_aspose_cells_cloud_status_request.create_http_request(@api_client,opts )
       return data
    end

    # Check the Health Status of Aspose.Cells Cloud Service.

    def check_cloud_service_health( check_cloud_service_health_request, opts = {})

       data, _status_code, _headers = check_cloud_service_health_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a spreadsheet in cloud storage to the specified format.

    def export_spreadsheet_as_format( export_spreadsheet_as_format_request, opts = {})

       data, _status_code, _headers = export_spreadsheet_as_format_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a worksheet of spreadsheet in cloud storage to the specified format.

    def export_worksheet_as_format( export_worksheet_as_format_request, opts = {})

       data, _status_code, _headers = export_worksheet_as_format_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a chart of spreadsheet in cloud storage to the specified format.

    def export_chart_as_format( export_chart_as_format_request, opts = {})

       data, _status_code, _headers = export_chart_as_format_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a table of spreadsheet in cloud storage to the specified format.

    def export_table_as_format( export_table_as_format_request, opts = {})

       data, _status_code, _headers = export_table_as_format_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts the range of spreadsheet in cloud storage to the specified format.

    def export_range_as_format( export_range_as_format_request, opts = {})

       data, _status_code, _headers = export_range_as_format_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a spreadsheet on a local drive to the specified format.

    def convert_spreadsheet( convert_spreadsheet_request, opts = {})

       data, _status_code, _headers = convert_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a spreadsheet on a local drive to the pdf file.

    def convert_spreadsheet_to_pdf( convert_spreadsheet_to_pdf_request, opts = {})

       data, _status_code, _headers = convert_spreadsheet_to_pdf_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a spreadsheet on a local drive to the JSON file.

    def convert_spreadsheet_to_json( convert_spreadsheet_to_json_request, opts = {})

       data, _status_code, _headers = convert_spreadsheet_to_json_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a spreadsheet on a local drive to the csv file.

    def convert_spreadsheet_to_csv( convert_spreadsheet_to_csv_request, opts = {})

       data, _status_code, _headers = convert_spreadsheet_to_csv_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a worksheet of spreadsheet on a local drive to the image format.

    def convert_worksheet_to_image( convert_worksheet_to_image_request, opts = {})

       data, _status_code, _headers = convert_worksheet_to_image_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a worksheet of spreadsheet on a local drive to the pdf file.

    def convert_worksheet_to_pdf( convert_worksheet_to_pdf_request, opts = {})

       data, _status_code, _headers = convert_worksheet_to_pdf_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a worksheet of spreadsheet on a local drive to the JSON file.

    def convert_worksheet_to_json( convert_worksheet_to_json_request, opts = {})

       data, _status_code, _headers = convert_worksheet_to_json_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a worksheet of spreadsheet on a local drive to the CSV file.

    def convert_worksheet_to_csv( convert_worksheet_to_csv_request, opts = {})

       data, _status_code, _headers = convert_worksheet_to_csv_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a worksheet of spreadsheet on a local drive to the html file.

    def convert_worksheet_to_html( convert_worksheet_to_html_request, opts = {})

       data, _status_code, _headers = convert_worksheet_to_html_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a worksheet of spreadsheet on a local drive to the HTML table file.

    def convert_worksheet_to_html_table( convert_worksheet_to_html_table_request, opts = {})

       data, _status_code, _headers = convert_worksheet_to_html_table_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a table of spreadsheet on a local drive to the image file.

    def convert_table_to_image( convert_table_to_image_request, opts = {})

       data, _status_code, _headers = convert_table_to_image_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a table of spreadsheet on a local drive to the pdf file.

    def convert_table_to_pdf( convert_table_to_pdf_request, opts = {})

       data, _status_code, _headers = convert_table_to_pdf_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a table of spreadsheet on a local drive to the csv file.

    def convert_table_to_csv( convert_table_to_csv_request, opts = {})

       data, _status_code, _headers = convert_table_to_csv_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a table of spreadsheet on a local drive to the html file.

    def convert_table_to_html( convert_table_to_html_request, opts = {})

       data, _status_code, _headers = convert_table_to_html_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a table of spreadsheet on a local drive to the json file.

    def convert_table_to_json( convert_table_to_json_request, opts = {})

       data, _status_code, _headers = convert_table_to_json_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a range of spreadsheet on a local drive to the image file.

    def convert_range_to_image( convert_range_to_image_request, opts = {})

       data, _status_code, _headers = convert_range_to_image_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a range of spreadsheet on a local drive to the pdf file.

    def convert_range_to_pdf( convert_range_to_pdf_request, opts = {})

       data, _status_code, _headers = convert_range_to_pdf_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a range of spreadsheet on a local drive to the csv file.

    def convert_range_to_csv( convert_range_to_csv_request, opts = {})

       data, _status_code, _headers = convert_range_to_csv_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a range of spreadsheet on a local drive to the html file.

    def convert_range_to_html( convert_range_to_html_request, opts = {})

       data, _status_code, _headers = convert_range_to_html_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a range of spreadsheet on a local drive to the json file.

    def convert_range_to_json( convert_range_to_json_request, opts = {})

       data, _status_code, _headers = convert_range_to_json_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a chart of spreadsheet on a local drive to image.

    def convert_chart_to_image( convert_chart_to_image_request, opts = {})

       data, _status_code, _headers = convert_chart_to_image_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a chart of spreadsheet on a local drive to pdf.

    def convert_chart_to_pdf( convert_chart_to_pdf_request, opts = {})

       data, _status_code, _headers = convert_chart_to_pdf_request.create_http_request(@api_client,opts )
       return data
    end

    # Converts a spreadsheet in cloud storage to the specified format.

    def save_spreadsheet_as( save_spreadsheet_as_request, opts = {})

       data, _status_code, _headers = save_spreadsheet_as_request.create_http_request(@api_client,opts )
       return data
    end

    # Merge local spreadsheet files into a specified format file.

    def merge_spreadsheets( merge_spreadsheets_request, opts = {})

       data, _status_code, _headers = merge_spreadsheets_request.create_http_request(@api_client,opts )
       return data
    end

    # Merge spreadsheet files in folder of cloud storage into a specified format file.

    def merge_spreadsheets_in_remote_folder( merge_spreadsheets_in_remote_folder_request, opts = {})

       data, _status_code, _headers = merge_spreadsheets_in_remote_folder_request.create_http_request(@api_client,opts )
       return data
    end

    # Merge a spreadsheet file into other spreadsheet in cloud storage, and output a specified format file.

    def merge_remote_spreadsheet( merge_remote_spreadsheet_request, opts = {})

       data, _status_code, _headers = merge_remote_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Split a local spreadsheet into the specified format, multi-file.

    def split_spreadsheet( split_spreadsheet_request, opts = {})

       data, _status_code, _headers = split_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Split an Excel worksheet tale into multiple sheets by column value.

    def split_table( split_table_request, opts = {})

       data, _status_code, _headers = split_table_request.create_http_request(@api_client,opts )
       return data
    end

    # Split a spreadsheet in cloud storage into the specified format, multi-file.

    def split_remote_spreadsheet( split_remote_spreadsheet_request, opts = {})

       data, _status_code, _headers = split_remote_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Import data into a spreadsheet from a supported data file format.

    def import_data_into_spreadsheet( import_data_into_spreadsheet_request, opts = {})

       data, _status_code, _headers = import_data_into_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Import JSON data file into the local spreadsheet.

    def import_json_data_into_spreadsheet( import_json_data_into_spreadsheet_request, opts = {})

       data, _status_code, _headers = import_json_data_into_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Import XML data file into the local spreadsheet.

    def import_xml_data_into_spreadsheet( import_xml_data_into_spreadsheet_request, opts = {})

       data, _status_code, _headers = import_xml_data_into_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Import CSV data file into the local spreadsheet.

    def import_csv_data_into_spreadsheet( import_csv_data_into_spreadsheet_request, opts = {})

       data, _status_code, _headers = import_csv_data_into_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Get an asymmetric public key.

    def get_public_key( get_public_key_request, opts = {})

       data, _status_code, _headers = get_public_key_request.create_http_request(@api_client,opts )
       return data
    end

    # The Web API allows users to create a new spreadsheet with a specified name. Optionally, a template can be provided to initialize the spreadsheet with predefined content or formatting.

    def create_spreadsheet( create_spreadsheet_request, opts = {})

       data, _status_code, _headers = create_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Fetches a complete list of worksheets from the currently active local spreadsheet.

    def get_worksheets_with_local_spreadsheet( get_worksheets_with_local_spreadsheet_request, opts = {})

       data, _status_code, _headers = get_worksheets_with_local_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # The Web API enables users to add a new worksheet to a workbook, specifying the worksheet's type, position, and name. This function provides flexibility in managing workbook structure by allowing detailed control over worksheet addition.

    def add_worksheet_to_spreadsheet( add_worksheet_to_spreadsheet_request, opts = {})

       data, _status_code, _headers = add_worksheet_to_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # The Web API endpoint allows users to delete a specified worksheet from a workbook. This function provides a straightforward way to manage workbook structure by removing unnecessary or redundant worksheets.

    def delete_worksheet_from_spreadsheet( delete_worksheet_from_spreadsheet_request, opts = {})

       data, _status_code, _headers = delete_worksheet_from_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # The Web API endpoint allows users to rename a specified worksheet within a workbook. This function provides a straightforward way to update worksheet names, enhancing workbook organization and readability.

    def rename_worksheet_in_spreadsheet( rename_worksheet_in_spreadsheet_request, opts = {})

       data, _status_code, _headers = rename_worksheet_in_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # The Web API endpoint allows users to move a specified worksheet within a workbook. This function provides a straightforward way to move a worksheet, enhancing workbook organization.

    def move_worksheet_in_spreadsheet( move_worksheet_in_spreadsheet_request, opts = {})

       data, _status_code, _headers = move_worksheet_in_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # The Web API endpoint allows users to compress a spreadsheet to reduce its file size. This function provides a straightforward way to optimize the storage and performance of spreadsheets by applying a specified compression level.

    def compress_spreadsheet( compress_spreadsheet_request, opts = {})

       data, _status_code, _headers = compress_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # The Web API endpoint allows users to repair a spreadsheet.

    def repair_spreadsheet( repair_spreadsheet_request, opts = {})

       data, _status_code, _headers = repair_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Get all merged cell area form a remote spreadsheet worksheet.

    def get_merged_cells_in_remoted_worksheet( get_merged_cells_in_remoted_worksheet_request, opts = {})

       data, _status_code, _headers = get_merged_cells_in_remoted_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Get all merged cell area form a local spreadsheet worksheet.

    def get_merged_cells_in_worksheet( get_merged_cells_in_worksheet_request, opts = {})

       data, _status_code, _headers = get_merged_cells_in_worksheet_request.create_http_request(@api_client,opts )
       return data
    end


    def accept_all_revisions( accept_all_revisions_request, opts = {})

       data, _status_code, _headers = accept_all_revisions_request.create_http_request(@api_client,opts )
       return data
    end


    def accept_all_revisions_in_remote_spreadsheet( accept_all_revisions_in_remote_spreadsheet_request, opts = {})

       data, _status_code, _headers = accept_all_revisions_in_remote_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Applies dual-layer password protection to Excel spreadsheets, supporting both open and modify passwords with encryption.

    def protect_spreadsheet( protect_spreadsheet_request, opts = {})

       data, _status_code, _headers = protect_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Removes dual-layer password protection from Excel spreadsheets, supporting both open and modify passwords with encryption.

    def unprotect_spreadsheet( unprotect_spreadsheet_request, opts = {})

       data, _status_code, _headers = unprotect_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end


    def spreadsheet_digitalsignature( spreadsheet_digitalsignature_request, opts = {})

       data, _status_code, _headers = spreadsheet_digitalsignature_request.create_http_request(@api_client,opts )
       return data
    end

    # Get all text items in the remote spreadsheet.

    def search_all_text_items_in_remote_spreadsheet( search_all_text_items_in_remote_spreadsheet_request, opts = {})

       data, _status_code, _headers = search_all_text_items_in_remote_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Get all text items in the remote spreadsheet.

    def search_spreadsheet_all_text_items( search_spreadsheet_all_text_items_request, opts = {})

       data, _status_code, _headers = search_spreadsheet_all_text_items_request.create_http_request(@api_client,opts )
       return data
    end

    # Search text in the local spreadsheet.

    def search_spreadsheet_content( search_spreadsheet_content_request, opts = {})

       data, _status_code, _headers = search_spreadsheet_content_request.create_http_request(@api_client,opts )
       return data
    end

    # Search text in the remoted spreadsheet.

    def search_content_in_remote_spreadsheet( search_content_in_remote_spreadsheet_request, opts = {})

       data, _status_code, _headers = search_content_in_remote_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Search text in the worksheet of remoted spreadsheet.

    def search_content_in_remote_worksheet( search_content_in_remote_worksheet_request, opts = {})

       data, _status_code, _headers = search_content_in_remote_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Search text in the range of remoted spreadsheet.

    def search_content_in_remote_range( search_content_in_remote_range_request, opts = {})

       data, _status_code, _headers = search_content_in_remote_range_request.create_http_request(@api_client,opts )
       return data
    end

    # Replace text in the local spreadsheet.

    def replace_spreadsheet_content( replace_spreadsheet_content_request, opts = {})

       data, _status_code, _headers = replace_spreadsheet_content_request.create_http_request(@api_client,opts )
       return data
    end

    # Replace text in the remoted spreadsheet.

    def replace_content_in_remote_spreadsheet( replace_content_in_remote_spreadsheet_request, opts = {})

       data, _status_code, _headers = replace_content_in_remote_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Replace text in the worksheet of remoted spreadsheet.

    def replace_content_in_remote_worksheet( replace_content_in_remote_worksheet_request, opts = {})

       data, _status_code, _headers = replace_content_in_remote_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Replace text in the range of remoted spreadsheet.

    def replace_content_in_remote_range( replace_content_in_remote_range_request, opts = {})

       data, _status_code, _headers = replace_content_in_remote_range_request.create_http_request(@api_client,opts )
       return data
    end

    # Search broken links in the local spreadsheet.

    def search_spreadsheet_broken_links( search_spreadsheet_broken_links_request, opts = {})

       data, _status_code, _headers = search_spreadsheet_broken_links_request.create_http_request(@api_client,opts )
       return data
    end

    # Search broken links in the remoted spreadsheet.

    def search_broken_links_in_remote_spreadsheet( search_broken_links_in_remote_spreadsheet_request, opts = {})

       data, _status_code, _headers = search_broken_links_in_remote_spreadsheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Search broken links in the worksheet of remoted spreadsheet.

    def search_broken_links_in_remote_worksheet( search_broken_links_in_remote_worksheet_request, opts = {})

       data, _status_code, _headers = search_broken_links_in_remote_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Search broken links in the range of remoted spreadsheet.

    def search_broken_links_in_remote_range( search_broken_links_in_remote_range_request, opts = {})

       data, _status_code, _headers = search_broken_links_in_remote_range_request.create_http_request(@api_client,opts )
       return data
    end

    # Get the specifications

    def spec( spec_request, opts = {})

       data, _status_code, _headers = spec_request.create_http_request(@api_client,opts )
       return data
    end


    def codegen_spec( codegen_spec_request, opts = {})

       data, _status_code, _headers = codegen_spec_request.create_http_request(@api_client,opts )
       return data
    end

    # The TrimSpreadsheetContent API is designed to process and trim content within a spreadsheet. This API allows users to remove extra spaces, line breaks, or other unnecessary characters from the content of selected cells. It is particularly useful for cleaning up data entries and ensuring consistency in spreadsheet formatting

    def trim_character( trim_character_request, opts = {})

       data, _status_code, _headers = trim_character_request.create_http_request(@api_client,opts )
       return data
    end

    # Specify changing the text case in a spreadsheet to switch between uppercase, lowercase, capitalizing the first letter of each word, or capitalizing the first letter of a sentence, and adjust the text according to specific needs.

    def update_word_case( update_word_case_request, opts = {})

       data, _status_code, _headers = update_word_case_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes user-defined characters, predefined symbol sets, or any substring from every cell in the chosen range while preserving formulas, formatting and data-validation.

    def remove_characters( remove_characters_request, opts = {})

       data, _status_code, _headers = remove_characters_request.create_http_request(@api_client,opts )
       return data
    end

    # Deletes characters from every cell in the target range by position (first/last N, before/after a substring, or between two delimiters) while preserving formulas, formatting and data-validation.

    def remove_characters_by_position( remove_characters_by_position_request, opts = {})

       data, _status_code, _headers = remove_characters_by_position_request.create_http_request(@api_client,opts )
       return data
    end

    # Finds and removes repeated substrings inside every cell of the chosen range, using user-defined or preset delimiters, while preserving formulas, formatting and data-validation.

    def remove_duplicate_substrings( remove_duplicate_substrings_request, opts = {})

       data, _status_code, _headers = remove_duplicate_substrings_request.create_http_request(@api_client,opts )
       return data
    end

    # Specify appending text to multiple cells at once, allowing you to add prefixes, suffixes, labels, or any specific characters. You can choose the exact position of the text—in the beginning, at the end, or before or after certain characters in the cell.

    def add_text( add_text_request, opts = {})

       data, _status_code, _headers = add_text_request.create_http_request(@api_client,opts )
       return data
    end

    # Indicates converting the numbers stored as text into the correct number format, replacing unwanted characters and line breaks with the desired characters, and converting accented characters to their equivalent characters without accents.

    def convert_text( convert_text_request, opts = {})

       data, _status_code, _headers = convert_text_request.create_http_request(@api_client,opts )
       return data
    end

    # Indicates extracting substrings, text characters, and numbers from a spreadsheet cell into another cell without having to use complex FIND, MIN, LEFT, or RIGHT formulas.

    def extract_text( extract_text_request, opts = {})

       data, _status_code, _headers = extract_text_request.create_http_request(@api_client,opts )
       return data
    end

    # Indicates performing text segmentation on the specified area according to the segmentation method, and outputting to the designated interval.

    def split_text( split_text_request, opts = {})

       data, _status_code, _headers = split_text_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all blank rows that do not contain any data or other objects.

    def remove_spreadsheet_blank_rows( remove_spreadsheet_blank_rows_request, opts = {})

       data, _status_code, _headers = remove_spreadsheet_blank_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all blank rows that do not contain any data or other objects.

    def remove_spreadsheet_blank_columns( remove_spreadsheet_blank_columns_request, opts = {})

       data, _status_code, _headers = remove_spreadsheet_blank_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all blank rows that do not contain any data or other objects.

    def remove_spreadsheet_blank_worksheets( remove_spreadsheet_blank_worksheets_request, opts = {})

       data, _status_code, _headers = remove_spreadsheet_blank_worksheets_request.create_http_request(@api_client,opts )
       return data
    end

    # Removes duplicate values in the worksheet/range/table.

    def remove_duplicates( remove_duplicates_request, opts = {})

       data, _status_code, _headers = remove_duplicates_request.create_http_request(@api_client,opts )
       return data
    end

    # The Swap Ranges for Excel API provides a powerful tool to move any two columns, rows, ranges, or individual cells within an Excel file. This API allows users to re-arrange their tables quickly and efficiently, ensuring that the original data formatting is preserved and all existing formulas continue to function correctly. By leveraging this API, users can streamline their data manipulation tasks and maintain the integrity of their spreadsheets.

    def swap_range( swap_range_request, opts = {})

       data, _status_code, _headers = swap_range_request.create_http_request(@api_client,opts )
       return data
    end

    # Transposes a specified data range (rows become columns, columns become rows).

    def flip_data( flip_data_request, opts = {})

       data, _status_code, _headers = flip_data_request.create_http_request(@api_client,opts )
       return data
    end

    # Switch rows and columns in the spreadsheet.

    def transpose_data( transpose_data_request, opts = {})

       data, _status_code, _headers = transpose_data_request.create_http_request(@api_client,opts )
       return data
    end

    # Switch rows and columns in the spreadsheet.

    def unpivot_range( unpivot_range_request, opts = {})

       data, _status_code, _headers = unpivot_range_request.create_http_request(@api_client,opts )
       return data
    end

    # Switch rows and columns in the spreadsheet.

    def unpivot_table( unpivot_table_request, opts = {})

       data, _status_code, _headers = unpivot_table_request.create_http_request(@api_client,opts )
       return data
    end


    def download_file( download_file_request, opts = {})

       data, _status_code, _headers = download_file_request.create_http_request(@api_client,opts )
       return data
    end


    def upload_file( upload_file_request, opts = {})

       data, _status_code, _headers = upload_file_request.create_http_request(@api_client,opts )
       return data
    end


    def copy_file( copy_file_request, opts = {})

       data, _status_code, _headers = copy_file_request.create_http_request(@api_client,opts )
       return data
    end


    def move_file( move_file_request, opts = {})

       data, _status_code, _headers = move_file_request.create_http_request(@api_client,opts )
       return data
    end


    def delete_file( delete_file_request, opts = {})

       data, _status_code, _headers = delete_file_request.create_http_request(@api_client,opts )
       return data
    end


    def get_files_list( get_files_list_request, opts = {})

       data, _status_code, _headers = get_files_list_request.create_http_request(@api_client,opts )
       return data
    end


    def create_folder( create_folder_request, opts = {})

       data, _status_code, _headers = create_folder_request.create_http_request(@api_client,opts )
       return data
    end


    def copy_folder( copy_folder_request, opts = {})

       data, _status_code, _headers = copy_folder_request.create_http_request(@api_client,opts )
       return data
    end


    def move_folder( move_folder_request, opts = {})

       data, _status_code, _headers = move_folder_request.create_http_request(@api_client,opts )
       return data
    end


    def delete_folder( delete_folder_request, opts = {})

       data, _status_code, _headers = delete_folder_request.create_http_request(@api_client,opts )
       return data
    end


    def storage_exists( storage_exists_request, opts = {})

       data, _status_code, _headers = storage_exists_request.create_http_request(@api_client,opts )
       return data
    end


    def object_exists( object_exists_request, opts = {})

       data, _status_code, _headers = object_exists_request.create_http_request(@api_client,opts )
       return data
    end


    def get_disc_usage( get_disc_usage_request, opts = {})

       data, _status_code, _headers = get_disc_usage_request.create_http_request(@api_client,opts )
       return data
    end


    def get_file_versions( get_file_versions_request, opts = {})

       data, _status_code, _headers = get_file_versions_request.create_http_request(@api_client,opts )
       return data
    end

    # Perform business analysis of data in Excel files.

    def post_analyze_excel( post_analyze_excel_request, opts = {})

       data, _status_code, _headers = post_analyze_excel_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve the description of auto filters from a worksheet.

    def get_worksheet_auto_filter( get_worksheet_auto_filter_request, opts = {})

       data, _status_code, _headers = get_worksheet_auto_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Apply a date filter in the worksheet.

    def put_worksheet_date_filter( put_worksheet_date_filter_request, opts = {})

       data, _status_code, _headers = put_worksheet_date_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a filter for a column in the worksheet.

    def put_worksheet_filter( put_worksheet_filter_request, opts = {})

       data, _status_code, _headers = put_worksheet_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Add an icon filter in the worksheet.

    def put_worksheet_icon_filter( put_worksheet_icon_filter_request, opts = {})

       data, _status_code, _headers = put_worksheet_icon_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Filter a list with custom criteria in the worksheet.

    def put_worksheet_custom_filter( put_worksheet_custom_filter_request, opts = {})

       data, _status_code, _headers = put_worksheet_custom_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a dynamic filter in the worksheet.

    def put_worksheet_dynamic_filter( put_worksheet_dynamic_filter_request, opts = {})

       data, _status_code, _headers = put_worksheet_dynamic_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Filter the top 10 items in the list in the worksheet.

    def put_worksheet_filter_top10( put_worksheet_filter_top10_request, opts = {})

       data, _status_code, _headers = put_worksheet_filter_top10_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a color filter in the worksheet.

    def put_worksheet_color_filter( put_worksheet_color_filter_request, opts = {})

       data, _status_code, _headers = put_worksheet_color_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Match all blank cells in the list.

    def post_worksheet_match_blanks( post_worksheet_match_blanks_request, opts = {})

       data, _status_code, _headers = post_worksheet_match_blanks_request.create_http_request(@api_client,opts )
       return data
    end

    # Match all not blank cells in the list.

    def post_worksheet_match_non_blanks( post_worksheet_match_non_blanks_request, opts = {})

       data, _status_code, _headers = post_worksheet_match_non_blanks_request.create_http_request(@api_client,opts )
       return data
    end

    # Refresh auto filters in the worksheet.

    def post_worksheet_auto_filter_refresh( post_worksheet_auto_filter_refresh_request, opts = {})

       data, _status_code, _headers = post_worksheet_auto_filter_refresh_request.create_http_request(@api_client,opts )
       return data
    end

    # Remove a date filter in the worksheet.

    def delete_worksheet_date_filter( delete_worksheet_date_filter_request, opts = {})

       data, _status_code, _headers = delete_worksheet_date_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a filter for a column in the worksheet.

    def delete_worksheet_filter( delete_worksheet_filter_request, opts = {})

       data, _status_code, _headers = delete_worksheet_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Get autoshapes description in worksheet.

    def get_worksheet_autoshapes( get_worksheet_autoshapes_request, opts = {})

       data, _status_code, _headers = get_worksheet_autoshapes_request.create_http_request(@api_client,opts )
       return data
    end

    # Get autoshape description in some format.

    def get_worksheet_autoshape_with_format( get_worksheet_autoshape_with_format_request, opts = {})

       data, _status_code, _headers = get_worksheet_autoshape_with_format_request.create_http_request(@api_client,opts )
       return data
    end

    # Batch converting files that meet specific matching conditions.

    def post_batch_convert( post_batch_convert_request, opts = {})

       data, _status_code, _headers = post_batch_convert_request.create_http_request(@api_client,opts )
       return data
    end

    # Batch protecting files that meet specific matching conditions.

    def post_batch_protect( post_batch_protect_request, opts = {})

       data, _status_code, _headers = post_batch_protect_request.create_http_request(@api_client,opts )
       return data
    end

    # Batch locking files that meet specific matching conditions.

    def post_batch_lock( post_batch_lock_request, opts = {})

       data, _status_code, _headers = post_batch_lock_request.create_http_request(@api_client,opts )
       return data
    end

    # Batch unlocking files that meet specific matching conditions.

    def post_batch_unlock( post_batch_unlock_request, opts = {})

       data, _status_code, _headers = post_batch_unlock_request.create_http_request(@api_client,opts )
       return data
    end

    # Batch splitting files that meet specific matching conditions.

    def post_batch_split( post_batch_split_request, opts = {})

       data, _status_code, _headers = post_batch_split_request.create_http_request(@api_client,opts )
       return data
    end

    # Clear cell area contents in the worksheet.

    def post_clear_contents( post_clear_contents_request, opts = {})

       data, _status_code, _headers = post_clear_contents_request.create_http_request(@api_client,opts )
       return data
    end

    # Clear cell formats in the worksheet.

    def post_clear_formats( post_clear_formats_request, opts = {})

       data, _status_code, _headers = post_clear_formats_request.create_http_request(@api_client,opts )
       return data
    end

    # Update cell range styles in the worksheet.

    def post_update_worksheet_range_style( post_update_worksheet_range_style_request, opts = {})

       data, _status_code, _headers = post_update_worksheet_range_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Merge cells in the worksheet.

    def post_worksheet_merge( post_worksheet_merge_request, opts = {})

       data, _status_code, _headers = post_worksheet_merge_request.create_http_request(@api_client,opts )
       return data
    end

    # Unmerge cells in the worksheet.

    def post_worksheet_unmerge( post_worksheet_unmerge_request, opts = {})

       data, _status_code, _headers = post_worksheet_unmerge_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve cell descriptions in a specified format.

    def get_worksheet_cells( get_worksheet_cells_request, opts = {})

       data, _status_code, _headers = get_worksheet_cells_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve cell data using either cell reference or method name in the worksheet.

    def get_worksheet_cell( get_worksheet_cell_request, opts = {})

       data, _status_code, _headers = get_worksheet_cell_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve cell style descriptions in the worksheet.

    def get_worksheet_cell_style( get_worksheet_cell_style_request, opts = {})

       data, _status_code, _headers = get_worksheet_cell_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Set cell value using cell name in the worksheet.

    def post_worksheet_cell_set_value( post_worksheet_cell_set_value_request, opts = {})

       data, _status_code, _headers = post_worksheet_cell_set_value_request.create_http_request(@api_client,opts )
       return data
    end

    # Set cell style using cell name in the worksheet.

    def post_update_worksheet_cell_style( post_update_worksheet_cell_style_request, opts = {})

       data, _status_code, _headers = post_update_worksheet_cell_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Set the value of the range in the worksheet.

    def post_set_cell_range_value( post_set_cell_range_value_request, opts = {})

       data, _status_code, _headers = post_set_cell_range_value_request.create_http_request(@api_client,opts )
       return data
    end

    # Copy data from a source cell to a destination cell in the worksheet.

    def post_copy_cell_into_cell( post_copy_cell_into_cell_request, opts = {})

       data, _status_code, _headers = post_copy_cell_into_cell_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve the HTML string containing data and specific formats in this cell.

    def get_cell_html_string( get_cell_html_string_request, opts = {})

       data, _status_code, _headers = get_cell_html_string_request.create_http_request(@api_client,opts )
       return data
    end

    # Set the HTML string containing data and specific formats in this cell.

    def post_set_cell_html_string( post_set_cell_html_string_request, opts = {})

       data, _status_code, _headers = post_set_cell_html_string_request.create_http_request(@api_client,opts )
       return data
    end

    # Calculate cell formula in the worksheet.

    def post_cell_calculate( post_cell_calculate_request, opts = {})

       data, _status_code, _headers = post_cell_calculate_request.create_http_request(@api_client,opts )
       return data
    end

    # Set cell characters in the worksheet.

    def post_cell_characters( post_cell_characters_request, opts = {})

       data, _status_code, _headers = post_cell_characters_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of worksheet columns.

    def get_worksheet_columns( get_worksheet_columns_request, opts = {})

       data, _status_code, _headers = get_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Set worksheet column width.

    def post_set_worksheet_column_width( post_set_worksheet_column_width_request, opts = {})

       data, _status_code, _headers = post_set_worksheet_column_width_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve worksheet column data by column index.

    def get_worksheet_column( get_worksheet_column_request, opts = {})

       data, _status_code, _headers = get_worksheet_column_request.create_http_request(@api_client,opts )
       return data
    end

    # Insert worksheet columns in the worksheet.

    def put_insert_worksheet_columns( put_insert_worksheet_columns_request, opts = {})

       data, _status_code, _headers = put_insert_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete worksheet columns in the worksheet.

    def delete_worksheet_columns( delete_worksheet_columns_request, opts = {})

       data, _status_code, _headers = delete_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Hide worksheet columns in the worksheet.

    def post_hide_worksheet_columns( post_hide_worksheet_columns_request, opts = {})

       data, _status_code, _headers = post_hide_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Unhide worksheet columns in the worksheet.

    def post_unhide_worksheet_columns( post_unhide_worksheet_columns_request, opts = {})

       data, _status_code, _headers = post_unhide_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Group worksheet columns in the worksheet.

    def post_group_worksheet_columns( post_group_worksheet_columns_request, opts = {})

       data, _status_code, _headers = post_group_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Ungroup worksheet columns.

    def post_ungroup_worksheet_columns( post_ungroup_worksheet_columns_request, opts = {})

       data, _status_code, _headers = post_ungroup_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Copy data from source columns to destination columns in the worksheet.

    def post_copy_worksheet_columns( post_copy_worksheet_columns_request, opts = {})

       data, _status_code, _headers = post_copy_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Set column style in the worksheet.

    def post_column_style( post_column_style_request, opts = {})

       data, _status_code, _headers = post_column_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of rows in the worksheet.

    def get_worksheet_rows( get_worksheet_rows_request, opts = {})

       data, _status_code, _headers = get_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve row data by the row's index in the worksheet.

    def get_worksheet_row( get_worksheet_row_request, opts = {})

       data, _status_code, _headers = get_worksheet_row_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a row in the worksheet.

    def delete_worksheet_row( delete_worksheet_row_request, opts = {})

       data, _status_code, _headers = delete_worksheet_row_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete several rows in the worksheet.

    def delete_worksheet_rows( delete_worksheet_rows_request, opts = {})

       data, _status_code, _headers = delete_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Insert several new rows in the worksheet.

    def put_insert_worksheet_rows( put_insert_worksheet_rows_request, opts = {})

       data, _status_code, _headers = put_insert_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Insert a new row in the worksheet.

    def put_insert_worksheet_row( put_insert_worksheet_row_request, opts = {})

       data, _status_code, _headers = put_insert_worksheet_row_request.create_http_request(@api_client,opts )
       return data
    end

    # Update height of rows in the worksheet.

    def post_update_worksheet_row( post_update_worksheet_row_request, opts = {})

       data, _status_code, _headers = post_update_worksheet_row_request.create_http_request(@api_client,opts )
       return data
    end

    # Hide rows in worksheet.

    def post_hide_worksheet_rows( post_hide_worksheet_rows_request, opts = {})

       data, _status_code, _headers = post_hide_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Unhide rows in the worksheet.

    def post_unhide_worksheet_rows( post_unhide_worksheet_rows_request, opts = {})

       data, _status_code, _headers = post_unhide_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Group rows in the worksheet.

    def post_group_worksheet_rows( post_group_worksheet_rows_request, opts = {})

       data, _status_code, _headers = post_group_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Ungroup rows in the worksheet.

    def post_ungroup_worksheet_rows( post_ungroup_worksheet_rows_request, opts = {})

       data, _status_code, _headers = post_ungroup_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Copy data and formats from specific entire rows in the worksheet.

    def post_copy_worksheet_rows( post_copy_worksheet_rows_request, opts = {})

       data, _status_code, _headers = post_copy_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Apply formats to an entire row in the worksheet.

    def post_row_style( post_row_style_request, opts = {})

       data, _status_code, _headers = post_row_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve cell descriptions in a specified format.

    def get_cells_cloud_services_health_check( get_cells_cloud_services_health_check_request, opts = {})

       data, _status_code, _headers = get_cells_cloud_services_health_check_request.create_http_request(@api_client,opts )
       return data
    end

    # Aspose.Cells Cloud service health status check.

    def get_cells_cloud_service_status( get_cells_cloud_service_status_request, opts = {})

       data, _status_code, _headers = get_cells_cloud_service_status_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve chart area description in the worksheet.

    def get_chart_area( get_chart_area_request, opts = {})

       data, _status_code, _headers = get_chart_area_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve chart area fill format description in the worksheet.

    def get_chart_area_fill_format( get_chart_area_fill_format_request, opts = {})

       data, _status_code, _headers = get_chart_area_fill_format_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve chart area border description.

    def get_chart_area_border( get_chart_area_border_request, opts = {})

       data, _status_code, _headers = get_chart_area_border_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of charts in the worksheet.

    def get_worksheet_charts( get_worksheet_charts_request, opts = {})

       data, _status_code, _headers = get_worksheet_charts_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve the chart in a specified format.

    def get_worksheet_chart( get_worksheet_chart_request, opts = {})

       data, _status_code, _headers = get_worksheet_chart_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a new chart in the worksheet.

    def put_worksheet_chart( put_worksheet_chart_request, opts = {})

       data, _status_code, _headers = put_worksheet_chart_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a chart by index in the worksheet.

    def delete_worksheet_chart( delete_worksheet_chart_request, opts = {})

       data, _status_code, _headers = delete_worksheet_chart_request.create_http_request(@api_client,opts )
       return data
    end

    # Update chart properties in the worksheet.

    def post_worksheet_chart( post_worksheet_chart_request, opts = {})

       data, _status_code, _headers = post_worksheet_chart_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve chart legend description in the worksheet.

    def get_worksheet_chart_legend( get_worksheet_chart_legend_request, opts = {})

       data, _status_code, _headers = get_worksheet_chart_legend_request.create_http_request(@api_client,opts )
       return data
    end

    # Update chart legend in the worksheet.

    def post_worksheet_chart_legend( post_worksheet_chart_legend_request, opts = {})

       data, _status_code, _headers = post_worksheet_chart_legend_request.create_http_request(@api_client,opts )
       return data
    end

    # Show chart legend in the worksheet.

    def put_worksheet_chart_legend( put_worksheet_chart_legend_request, opts = {})

       data, _status_code, _headers = put_worksheet_chart_legend_request.create_http_request(@api_client,opts )
       return data
    end

    # Hides chart legend in the worksheet.

    def delete_worksheet_chart_legend( delete_worksheet_chart_legend_request, opts = {})

       data, _status_code, _headers = delete_worksheet_chart_legend_request.create_http_request(@api_client,opts )
       return data
    end

    # Clear the charts in the worksheets.

    def delete_worksheet_charts( delete_worksheet_charts_request, opts = {})

       data, _status_code, _headers = delete_worksheet_charts_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve chart title description in the worksheet.

    def get_worksheet_chart_title( get_worksheet_chart_title_request, opts = {})

       data, _status_code, _headers = get_worksheet_chart_title_request.create_http_request(@api_client,opts )
       return data
    end

    # Update chart title in the worksheet.

    def post_worksheet_chart_title( post_worksheet_chart_title_request, opts = {})

       data, _status_code, _headers = post_worksheet_chart_title_request.create_http_request(@api_client,opts )
       return data
    end

    # Set chart title in the worksheet.

    def put_worksheet_chart_title( put_worksheet_chart_title_request, opts = {})

       data, _status_code, _headers = put_worksheet_chart_title_request.create_http_request(@api_client,opts )
       return data
    end

    # Hide chart title in the worksheet.

    def delete_worksheet_chart_title( delete_worksheet_chart_title_request, opts = {})

       data, _status_code, _headers = delete_worksheet_chart_title_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of chart seriesaxis in the chart.

    def get_chart_series_axis( get_chart_series_axis_request, opts = {})

       data, _status_code, _headers = get_chart_series_axis_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of chart series axis in the chart.

    def get_chart_category_axis( get_chart_category_axis_request, opts = {})

       data, _status_code, _headers = get_chart_category_axis_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve chart value axis in the chart.

    def get_chart_value_axis( get_chart_value_axis_request, opts = {})

       data, _status_code, _headers = get_chart_value_axis_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve chart second category axis in the chart

    def get_chart_second_category_axis( get_chart_second_category_axis_request, opts = {})

       data, _status_code, _headers = get_chart_second_category_axis_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve chart second value axis in the chart.

    def get_chart_second_value_axis( get_chart_second_value_axis_request, opts = {})

       data, _status_code, _headers = get_chart_second_value_axis_request.create_http_request(@api_client,opts )
       return data
    end

    # Update chart series axis in the chart.

    def post_chart_series_axis( post_chart_series_axis_request, opts = {})

       data, _status_code, _headers = post_chart_series_axis_request.create_http_request(@api_client,opts )
       return data
    end

    # Update chart category axis in the chart.

    def post_chart_category_axis( post_chart_category_axis_request, opts = {})

       data, _status_code, _headers = post_chart_category_axis_request.create_http_request(@api_client,opts )
       return data
    end

    # Update chart value axis in the chart.

    def post_chart_value_axis( post_chart_value_axis_request, opts = {})

       data, _status_code, _headers = post_chart_value_axis_request.create_http_request(@api_client,opts )
       return data
    end

    # Update chart sencond category axis in the chart.

    def post_chart_second_category_axis( post_chart_second_category_axis_request, opts = {})

       data, _status_code, _headers = post_chart_second_category_axis_request.create_http_request(@api_client,opts )
       return data
    end

    # Update chart sencond value axis in the chart.

    def post_chart_second_value_axis( post_chart_second_value_axis_request, opts = {})

       data, _status_code, _headers = post_chart_second_value_axis_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of conditional formattings in a worksheet.

    def get_worksheet_conditional_formattings( get_worksheet_conditional_formattings_request, opts = {})

       data, _status_code, _headers = get_worksheet_conditional_formattings_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve conditional formatting descriptions in the worksheet.

    def get_worksheet_conditional_formatting( get_worksheet_conditional_formatting_request, opts = {})

       data, _status_code, _headers = get_worksheet_conditional_formatting_request.create_http_request(@api_client,opts )
       return data
    end

    # Add conditional formatting in the worksheet.

    def put_worksheet_conditional_formatting( put_worksheet_conditional_formatting_request, opts = {})

       data, _status_code, _headers = put_worksheet_conditional_formatting_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a format condition in the worksheet.

    def put_worksheet_format_condition( put_worksheet_format_condition_request, opts = {})

       data, _status_code, _headers = put_worksheet_format_condition_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a cell area for the format condition in the worksheet.

    def put_worksheet_format_condition_area( put_worksheet_format_condition_area_request, opts = {})

       data, _status_code, _headers = put_worksheet_format_condition_area_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a condition for the format condition in the worksheet.

    def put_worksheet_format_condition_condition( put_worksheet_format_condition_condition_request, opts = {})

       data, _status_code, _headers = put_worksheet_format_condition_condition_request.create_http_request(@api_client,opts )
       return data
    end

    # Clear all conditional formattings in the worksheet.

    def delete_worksheet_conditional_formattings( delete_worksheet_conditional_formattings_request, opts = {})

       data, _status_code, _headers = delete_worksheet_conditional_formattings_request.create_http_request(@api_client,opts )
       return data
    end

    # Remove a conditional formatting.

    def delete_worksheet_conditional_formatting( delete_worksheet_conditional_formatting_request, opts = {})

       data, _status_code, _headers = delete_worksheet_conditional_formatting_request.create_http_request(@api_client,opts )
       return data
    end

    # Remove cell area from conditional formatting.

    def delete_worksheet_conditional_formatting_area( delete_worksheet_conditional_formatting_area_request, opts = {})

       data, _status_code, _headers = delete_worksheet_conditional_formatting_area_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve workbooks in various formats.

    def get_workbook( get_workbook_request, opts = {})

       data, _status_code, _headers = get_workbook_request.create_http_request(@api_client,opts )
       return data
    end

    # Convert the workbook from the requested content into files in different formats.

    def put_convert_workbook( put_convert_workbook_request, opts = {})

       data, _status_code, _headers = put_convert_workbook_request.create_http_request(@api_client,opts )
       return data
    end

    # Save an Excel file in various formats.

    def post_workbook_save_as( post_workbook_save_as_request, opts = {})

       data, _status_code, _headers = post_workbook_save_as_request.create_http_request(@api_client,opts )
       return data
    end

    # Convert Excel file to PDF files.

    def post_convert_workbook_to_pdf( post_convert_workbook_to_pdf_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_pdf_request.create_http_request(@api_client,opts )
       return data
    end

    # Convert Excel file to PNG files.

    def post_convert_workbook_to_png( post_convert_workbook_to_png_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_png_request.create_http_request(@api_client,opts )
       return data
    end

    # Convert Excel file to Docx files.

    def post_convert_workbook_to_docx( post_convert_workbook_to_docx_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_docx_request.create_http_request(@api_client,opts )
       return data
    end

    # Convert Excel file to Pptx files.

    def post_convert_workbook_to_pptx( post_convert_workbook_to_pptx_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_pptx_request.create_http_request(@api_client,opts )
       return data
    end

    # Convert Excel file to HTML files.

    def post_convert_workbook_to_html( post_convert_workbook_to_html_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_html_request.create_http_request(@api_client,opts )
       return data
    end

    # Convert Excel file to Markdown files.

    def post_convert_workbook_to_markdown( post_convert_workbook_to_markdown_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_markdown_request.create_http_request(@api_client,opts )
       return data
    end

    # Convert Excel file to Json files.

    def post_convert_workbook_to_json( post_convert_workbook_to_json_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_json_request.create_http_request(@api_client,opts )
       return data
    end

    # Convert Excel file to SQL Script files.

    def post_convert_workbook_to_sql( post_convert_workbook_to_sql_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_sql_request.create_http_request(@api_client,opts )
       return data
    end

    # Convert Excel file to Csv files.

    def post_convert_workbook_to_csv( post_convert_workbook_to_csv_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_to_csv_request.create_http_request(@api_client,opts )
       return data
    end


    def post_convert_worksheet_to_image( post_convert_worksheet_to_image_request, opts = {})

       data, _status_code, _headers = post_convert_worksheet_to_image_request.create_http_request(@api_client,opts )
       return data
    end


    def post_convert_workbook( post_convert_workbook_request, opts = {})

       data, _status_code, _headers = post_convert_workbook_request.create_http_request(@api_client,opts )
       return data
    end

    # Export Excel internal elements or the workbook itself to various format files.

    def check_wrokbook_external_reference( check_wrokbook_external_reference_request, opts = {})

       data, _status_code, _headers = check_wrokbook_external_reference_request.create_http_request(@api_client,opts )
       return data
    end


    def check_workbook_formula_errors( check_workbook_formula_errors_request, opts = {})

       data, _status_code, _headers = check_workbook_formula_errors_request.create_http_request(@api_client,opts )
       return data
    end

    # Export Excel internal elements or the workbook itself to various format files.

    def post_export( post_export_request, opts = {})

       data, _status_code, _headers = post_export_request.create_http_request(@api_client,opts )
       return data
    end

    # Export XML data from an Excel file.
    # When there are XML Maps in an Excel file, export XML data. When there is no XML map in the Excel file, convert the Excel file to an XML file.

    def post_workbook_export_xml( post_workbook_export_xml_request, opts = {})

       data, _status_code, _headers = post_workbook_export_xml_request.create_http_request(@api_client,opts )
       return data
    end

    # Import a JSON data file into the workbook. The JSON data file can either be a cloud file or data from an HTTP URI.

    def post_workbook_import_json( post_workbook_import_json_request, opts = {})

       data, _status_code, _headers = post_workbook_import_json_request.create_http_request(@api_client,opts )
       return data
    end

    # Import an XML data file into an Excel file. The XML data file can either be a cloud file or data from an HTTP URI.

    def post_workbook_import_xml( post_workbook_import_xml_request, opts = {})

       data, _status_code, _headers = post_workbook_import_xml_request.create_http_request(@api_client,opts )
       return data
    end

    # Import data into the Excel file.

    def post_import_data( post_import_data_request, opts = {})

       data, _status_code, _headers = post_import_data_request.create_http_request(@api_client,opts )
       return data
    end

    # Data cleaning of spreadsheet files is a data management process used to identify, correct, and remove errors, incompleteness, duplicates, or inaccuracies in tables and ranges.

    def post_workbook_data_cleansing( post_workbook_data_cleansing_request, opts = {})

       data, _status_code, _headers = post_workbook_data_cleansing_request.create_http_request(@api_client,opts )
       return data
    end

    # Data cleansing of spreadsheet files is a data management process used to identify, correct, and remove errors, incompleteness, duplicates, or inaccuracies in tables and ranges.

    def post_data_cleansing( post_data_cleansing_request, opts = {})

       data, _status_code, _headers = post_data_cleansing_request.create_http_request(@api_client,opts )
       return data
    end

    # Data deduplication of spreadsheet files is mainly used to eliminate duplicate data in tables and ranges.

    def post_workbook_data_deduplication( post_workbook_data_deduplication_request, opts = {})

       data, _status_code, _headers = post_workbook_data_deduplication_request.create_http_request(@api_client,opts )
       return data
    end

    # Data deduplication of spreadsheet files is mainly used to eliminate duplicate data in tables and ranges.

    def post_data_deduplication( post_data_deduplication_request, opts = {})

       data, _status_code, _headers = post_data_deduplication_request.create_http_request(@api_client,opts )
       return data
    end

    # Data filling for spreadsheet files is primarily used to fill empty data in tables and ranges.

    def post_workbook_data_fill( post_workbook_data_fill_request, opts = {})

       data, _status_code, _headers = post_workbook_data_fill_request.create_http_request(@api_client,opts )
       return data
    end

    # Data filling for spreadsheet files is primarily used to fill empty data in tables and ranges.

    def post_data_fill( post_data_fill_request, opts = {})

       data, _status_code, _headers = post_data_fill_request.create_http_request(@api_client,opts )
       return data
    end

    # Deleting incomplete rows of spreadsheet files is mainly used to eliminate incomplete rows in tables and ranges.

    def post_delete_incomplete_rows( post_delete_incomplete_rows_request, opts = {})

       data, _status_code, _headers = post_delete_incomplete_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Transform spreadsheet data is mainly used to pivot columns, unpivot columns.

    def post_data_transformation( post_data_transformation_request, opts = {})

       data, _status_code, _headers = post_data_transformation_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of hyperlinks in the worksheet.

    def get_worksheet_hyperlinks( get_worksheet_hyperlinks_request, opts = {})

       data, _status_code, _headers = get_worksheet_hyperlinks_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve hyperlink description by index in the worksheet.

    def get_worksheet_hyperlink( get_worksheet_hyperlink_request, opts = {})

       data, _status_code, _headers = get_worksheet_hyperlink_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete hyperlink by index in the worksheet.

    def delete_worksheet_hyperlink( delete_worksheet_hyperlink_request, opts = {})

       data, _status_code, _headers = delete_worksheet_hyperlink_request.create_http_request(@api_client,opts )
       return data
    end

    # Update hyperlink by index in the worksheet.

    def post_worksheet_hyperlink( post_worksheet_hyperlink_request, opts = {})

       data, _status_code, _headers = post_worksheet_hyperlink_request.create_http_request(@api_client,opts )
       return data
    end

    # Add hyperlink in the worksheet.

    def put_worksheet_hyperlink( put_worksheet_hyperlink_request, opts = {})

       data, _status_code, _headers = put_worksheet_hyperlink_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all hyperlinks in the worksheet.

    def delete_worksheet_hyperlinks( delete_worksheet_hyperlinks_request, opts = {})

       data, _status_code, _headers = delete_worksheet_hyperlinks_request.create_http_request(@api_client,opts )
       return data
    end

    # Assemble data files with template files to generate files in various formats.

    def post_assemble( post_assemble_request, opts = {})

       data, _status_code, _headers = post_assemble_request.create_http_request(@api_client,opts )
       return data
    end

    # Compress files and generate target files in various formats, supported file formats are include Xls, Xlsx, Xlsm, Xlsb, Ods and more.

    def post_compress( post_compress_request, opts = {})

       data, _status_code, _headers = post_compress_request.create_http_request(@api_client,opts )
       return data
    end

    # Merge cells in the worksheet.

    def post_merge( post_merge_request, opts = {})

       data, _status_code, _headers = post_merge_request.create_http_request(@api_client,opts )
       return data
    end

    # Split Excel spreadsheet files based on worksheets and create output files in various formats.

    def post_split( post_split_request, opts = {})

       data, _status_code, _headers = post_split_request.create_http_request(@api_client,opts )
       return data
    end

    # Search for specified text within Excel files.

    def post_search( post_search_request, opts = {})

       data, _status_code, _headers = post_search_request.create_http_request(@api_client,opts )
       return data
    end

    # Replace specified text with new text in Excel files.

    def post_replace( post_replace_request, opts = {})

       data, _status_code, _headers = post_replace_request.create_http_request(@api_client,opts )
       return data
    end

    # Import data into an Excel file and generate output files in various formats.

    def post_import( post_import_request, opts = {})

       data, _status_code, _headers = post_import_request.create_http_request(@api_client,opts )
       return data
    end

    # Add Text Watermark to Excel files and generate output files in various formats.

    def post_watermark( post_watermark_request, opts = {})

       data, _status_code, _headers = post_watermark_request.create_http_request(@api_client,opts )
       return data
    end

    # Clear internal elements in Excel files and generate output files in various formats.

    def post_clear_objects( post_clear_objects_request, opts = {})

       data, _status_code, _headers = post_clear_objects_request.create_http_request(@api_client,opts )
       return data
    end

    # Reverse rows or columns in Excel files and create output files in various formats.

    def post_reverse( post_reverse_request, opts = {})

       data, _status_code, _headers = post_reverse_request.create_http_request(@api_client,opts )
       return data
    end

    # Repair abnormal files and generate files in various formats.

    def post_repair( post_repair_request, opts = {})

       data, _status_code, _headers = post_repair_request.create_http_request(@api_client,opts )
       return data
    end

    # Rotate rows, columns, or other objects in Excel files and save them in various formats.

    def post_rotate( post_rotate_request, opts = {})

       data, _status_code, _headers = post_rotate_request.create_http_request(@api_client,opts )
       return data
    end

    # Update document properties in Excel file, and save them is various formats.

    def post_metadata( post_metadata_request, opts = {})

       data, _status_code, _headers = post_metadata_request.create_http_request(@api_client,opts )
       return data
    end

    # Get cells document properties.

    def get_metadata( get_metadata_request, opts = {})

       data, _status_code, _headers = get_metadata_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete cells document properties in Excel file, and save them is various formats.

    def delete_metadata( delete_metadata_request, opts = {})

       data, _status_code, _headers = delete_metadata_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of ListObjects in the worksheet.

    def get_worksheet_list_objects( get_worksheet_list_objects_request, opts = {})

       data, _status_code, _headers = get_worksheet_list_objects_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve list object description by index in the worksheet.

    def get_worksheet_list_object( get_worksheet_list_object_request, opts = {})

       data, _status_code, _headers = get_worksheet_list_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a ListObject in the worksheet.

    def put_worksheet_list_object( put_worksheet_list_object_request, opts = {})

       data, _status_code, _headers = put_worksheet_list_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete ListObjects in the worksheet.

    def delete_worksheet_list_objects( delete_worksheet_list_objects_request, opts = {})

       data, _status_code, _headers = delete_worksheet_list_objects_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete list object by index in the worksheet.

    def delete_worksheet_list_object( delete_worksheet_list_object_request, opts = {})

       data, _status_code, _headers = delete_worksheet_list_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Update list object by index in the worksheet.

    def post_worksheet_list_object( post_worksheet_list_object_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Convert list object to range in the worksheet.

    def post_worksheet_list_object_convert_to_range( post_worksheet_list_object_convert_to_range_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_object_convert_to_range_request.create_http_request(@api_client,opts )
       return data
    end

    # Create a pivot table with a list object in the worksheet.

    def post_worksheet_list_object_summarize_with_pivot_table( post_worksheet_list_object_summarize_with_pivot_table_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_object_summarize_with_pivot_table_request.create_http_request(@api_client,opts )
       return data
    end

    # Sort list object in the worksheet.

    def post_worksheet_list_object_sort_table( post_worksheet_list_object_sort_table_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_object_sort_table_request.create_http_request(@api_client,opts )
       return data
    end

    # Remove duplicates in list object.

    def post_worksheet_list_object_remove_duplicates( post_worksheet_list_object_remove_duplicates_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_object_remove_duplicates_request.create_http_request(@api_client,opts )
       return data
    end

    # Insert slicer for list object.

    def post_worksheet_list_object_insert_slicer( post_worksheet_list_object_insert_slicer_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_object_insert_slicer_request.create_http_request(@api_client,opts )
       return data
    end

    # Update list column in list object.

    def post_worksheet_list_column( post_worksheet_list_column_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_column_request.create_http_request(@api_client,opts )
       return data
    end

    # Update total of list columns in the table.

    def post_worksheet_list_columns_total( post_worksheet_list_columns_total_request, opts = {})

       data, _status_code, _headers = post_worksheet_list_columns_total_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of OLE objects in the worksheet.

    def get_worksheet_ole_objects( get_worksheet_ole_objects_request, opts = {})

       data, _status_code, _headers = get_worksheet_ole_objects_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve the OLE object in a specified format in the worksheet.

    def get_worksheet_ole_object( get_worksheet_ole_object_request, opts = {})

       data, _status_code, _headers = get_worksheet_ole_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all OLE objects in the worksheet.

    def delete_worksheet_ole_objects( delete_worksheet_ole_objects_request, opts = {})

       data, _status_code, _headers = delete_worksheet_ole_objects_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete an OLE object in the worksheet.

    def delete_worksheet_ole_object( delete_worksheet_ole_object_request, opts = {})

       data, _status_code, _headers = delete_worksheet_ole_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Update an OLE object in worksheet.

    def post_update_worksheet_ole_object( post_update_worksheet_ole_object_request, opts = {})

       data, _status_code, _headers = post_update_worksheet_ole_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Add an OLE object in the worksheet.

    def put_worksheet_ole_object( put_worksheet_ole_object_request, opts = {})

       data, _status_code, _headers = put_worksheet_ole_object_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of vertical page breaks in the worksheet.

    def get_vertical_page_breaks( get_vertical_page_breaks_request, opts = {})

       data, _status_code, _headers = get_vertical_page_breaks_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of horizontal page breaks in the worksheet.

    def get_horizontal_page_breaks( get_horizontal_page_breaks_request, opts = {})

       data, _status_code, _headers = get_horizontal_page_breaks_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve a vertical page break description in the worksheet.

    def get_vertical_page_break( get_vertical_page_break_request, opts = {})

       data, _status_code, _headers = get_vertical_page_break_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve a horizontal page break descripton in the worksheet.

    def get_horizontal_page_break( get_horizontal_page_break_request, opts = {})

       data, _status_code, _headers = get_horizontal_page_break_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a vertical page break in the worksheet.

    def put_vertical_page_break( put_vertical_page_break_request, opts = {})

       data, _status_code, _headers = put_vertical_page_break_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a horizontal page breaks in the worksheet.

    def put_horizontal_page_break( put_horizontal_page_break_request, opts = {})

       data, _status_code, _headers = put_horizontal_page_break_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete vertical page breaks in the worksheet.

    def delete_vertical_page_breaks( delete_vertical_page_breaks_request, opts = {})

       data, _status_code, _headers = delete_vertical_page_breaks_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete horizontal page breaks in the worksheet.

    def delete_horizontal_page_breaks( delete_horizontal_page_breaks_request, opts = {})

       data, _status_code, _headers = delete_horizontal_page_breaks_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a vertical page break in the worksheet.

    def delete_vertical_page_break( delete_vertical_page_break_request, opts = {})

       data, _status_code, _headers = delete_vertical_page_break_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a horizontal page break in the worksheet.

    def delete_horizontal_page_break( delete_horizontal_page_break_request, opts = {})

       data, _status_code, _headers = delete_horizontal_page_break_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve page setup description in the worksheet.

    def get_page_setup( get_page_setup_request, opts = {})

       data, _status_code, _headers = get_page_setup_request.create_http_request(@api_client,opts )
       return data
    end

    # Update page setup in the worksheet.

    def post_page_setup( post_page_setup_request, opts = {})

       data, _status_code, _headers = post_page_setup_request.create_http_request(@api_client,opts )
       return data
    end

    # Clear header and footer in the worksheet.

    def delete_header_footer( delete_header_footer_request, opts = {})

       data, _status_code, _headers = delete_header_footer_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve page header description in the worksheet.

    def get_header( get_header_request, opts = {})

       data, _status_code, _headers = get_header_request.create_http_request(@api_client,opts )
       return data
    end

    # Update page header in the worksheet.

    def post_header( post_header_request, opts = {})

       data, _status_code, _headers = post_header_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve page footer description in the worksheet.

    def get_footer( get_footer_request, opts = {})

       data, _status_code, _headers = get_footer_request.create_http_request(@api_client,opts )
       return data
    end

    # Update page footer in the worksheet.

    def post_footer( post_footer_request, opts = {})

       data, _status_code, _headers = post_footer_request.create_http_request(@api_client,opts )
       return data
    end

    # Set the scale at which the page will fit wide when printed on the sheet.

    def post_fit_wide_to_pages( post_fit_wide_to_pages_request, opts = {})

       data, _status_code, _headers = post_fit_wide_to_pages_request.create_http_request(@api_client,opts )
       return data
    end

    # Set the scale at which the page will fit tall when printed on the sheet.

    def post_fit_tall_to_pages( post_fit_tall_to_pages_request, opts = {})

       data, _status_code, _headers = post_fit_tall_to_pages_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of pictures in the worksheet.

    def get_worksheet_pictures( get_worksheet_pictures_request, opts = {})

       data, _status_code, _headers = get_worksheet_pictures_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve a picture by number in the worksheet.

    def get_worksheet_picture_with_format( get_worksheet_picture_with_format_request, opts = {})

       data, _status_code, _headers = get_worksheet_picture_with_format_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a new picture in the worksheet.

    def put_worksheet_add_picture( put_worksheet_add_picture_request, opts = {})

       data, _status_code, _headers = put_worksheet_add_picture_request.create_http_request(@api_client,opts )
       return data
    end

    # add new picture in the cells.

    def add_picture_in_cell( add_picture_in_cell_request, opts = {})

       data, _status_code, _headers = add_picture_in_cell_request.create_http_request(@api_client,opts )
       return data
    end

    # Update a picture by index in the worksheet.

    def post_worksheet_picture( post_worksheet_picture_request, opts = {})

       data, _status_code, _headers = post_worksheet_picture_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a picture object by index in the worksheet.

    def delete_worksheet_picture( delete_worksheet_picture_request, opts = {})

       data, _status_code, _headers = delete_worksheet_picture_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all pictures in the worksheet.

    def delete_worksheet_pictures( delete_worksheet_pictures_request, opts = {})

       data, _status_code, _headers = delete_worksheet_pictures_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of pivottables  in the worksheet.

    def get_worksheet_pivot_tables( get_worksheet_pivot_tables_request, opts = {})

       data, _status_code, _headers = get_worksheet_pivot_tables_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve PivotTable information by index in the worksheet.

    def get_worksheet_pivot_table( get_worksheet_pivot_table_request, opts = {})

       data, _status_code, _headers = get_worksheet_pivot_table_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of pivot fields in the PivotTable.

    def get_pivot_table_field( get_pivot_table_field_request, opts = {})

       data, _status_code, _headers = get_pivot_table_field_request.create_http_request(@api_client,opts )
       return data
    end

    # Gets PivotTable filters in worksheet.

    def get_worksheet_pivot_table_filters( get_worksheet_pivot_table_filters_request, opts = {})

       data, _status_code, _headers = get_worksheet_pivot_table_filters_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve PivotTable filters in the worksheet.

    def get_worksheet_pivot_table_filter( get_worksheet_pivot_table_filter_request, opts = {})

       data, _status_code, _headers = get_worksheet_pivot_table_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a PivotTable in the worksheet.

    def put_worksheet_pivot_table( put_worksheet_pivot_table_request, opts = {})

       data, _status_code, _headers = put_worksheet_pivot_table_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a pivot field in the PivotTable.

    def put_pivot_table_field( put_pivot_table_field_request, opts = {})

       data, _status_code, _headers = put_pivot_table_field_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a pivot filter to the PivotTable.

    def put_worksheet_pivot_table_filter( put_worksheet_pivot_table_filter_request, opts = {})

       data, _status_code, _headers = put_worksheet_pivot_table_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Hide a pivot field item in the PivotTable.

    def post_pivot_table_field_hide_item( post_pivot_table_field_hide_item_request, opts = {})

       data, _status_code, _headers = post_pivot_table_field_hide_item_request.create_http_request(@api_client,opts )
       return data
    end

    # Move a pivot field in the PivotTable.

    def post_pivot_table_field_move_to( post_pivot_table_field_move_to_request, opts = {})

       data, _status_code, _headers = post_pivot_table_field_move_to_request.create_http_request(@api_client,opts )
       return data
    end

    # Update cell style in the PivotTable.

    def post_pivot_table_cell_style( post_pivot_table_cell_style_request, opts = {})

       data, _status_code, _headers = post_pivot_table_cell_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Update style in the PivotTable.

    def post_pivot_table_style( post_pivot_table_style_request, opts = {})

       data, _status_code, _headers = post_pivot_table_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Update pivot fields in the PivotTable.

    def post_pivot_table_update_pivot_fields( post_pivot_table_update_pivot_fields_request, opts = {})

       data, _status_code, _headers = post_pivot_table_update_pivot_fields_request.create_http_request(@api_client,opts )
       return data
    end

    # Update pivot field in the PivotTable.

    def post_pivot_table_update_pivot_field( post_pivot_table_update_pivot_field_request, opts = {})

       data, _status_code, _headers = post_pivot_table_update_pivot_field_request.create_http_request(@api_client,opts )
       return data
    end

    # Calculate pivottable's data to cells.

    def post_worksheet_pivot_table_calculate( post_worksheet_pivot_table_calculate_request, opts = {})

       data, _status_code, _headers = post_worksheet_pivot_table_calculate_request.create_http_request(@api_client,opts )
       return data
    end

    # Move PivotTable in the worksheet.

    def post_worksheet_pivot_table_move( post_worksheet_pivot_table_move_request, opts = {})

       data, _status_code, _headers = post_worksheet_pivot_table_move_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete PivotTables in the worksheet.

    def delete_worksheet_pivot_tables( delete_worksheet_pivot_tables_request, opts = {})

       data, _status_code, _headers = delete_worksheet_pivot_tables_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete PivotTable by index in the worksheet.

    def delete_worksheet_pivot_table( delete_worksheet_pivot_table_request, opts = {})

       data, _status_code, _headers = delete_worksheet_pivot_table_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a pivot field in the PivotTable.

    def delete_pivot_table_field( delete_pivot_table_field_request, opts = {})

       data, _status_code, _headers = delete_pivot_table_field_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all pivot filters in the PivotTable.

    def delete_worksheet_pivot_table_filters( delete_worksheet_pivot_table_filters_request, opts = {})

       data, _status_code, _headers = delete_worksheet_pivot_table_filters_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a pivot filter in the PivotTable.

    def delete_worksheet_pivot_table_filter( delete_worksheet_pivot_table_filter_request, opts = {})

       data, _status_code, _headers = delete_worksheet_pivot_table_filter_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of Excel file properties.

    def get_document_properties( get_document_properties_request, opts = {})

       data, _status_code, _headers = get_document_properties_request.create_http_request(@api_client,opts )
       return data
    end

    # Set or add an Excel property.

    def put_document_property( put_document_property_request, opts = {})

       data, _status_code, _headers = put_document_property_request.create_http_request(@api_client,opts )
       return data
    end

    # Get Excel property by name.

    def get_document_property( get_document_property_request, opts = {})

       data, _status_code, _headers = get_document_property_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete an Excel property.

    def delete_document_property( delete_document_property_request, opts = {})

       data, _status_code, _headers = delete_document_property_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all custom document properties and reset built-in ones.

    def delete_document_properties( delete_document_properties_request, opts = {})

       data, _status_code, _headers = delete_document_properties_request.create_http_request(@api_client,opts )
       return data
    end

    # Excel file digital signature.

    def post_digital_signature( post_digital_signature_request, opts = {})

       data, _status_code, _headers = post_digital_signature_request.create_http_request(@api_client,opts )
       return data
    end

    # Excel Encryption.

    def post_encrypt_workbook( post_encrypt_workbook_request, opts = {})

       data, _status_code, _headers = post_encrypt_workbook_request.create_http_request(@api_client,opts )
       return data
    end

    # Excel files decryption.

    def delete_decrypt_workbook( delete_decrypt_workbook_request, opts = {})

       data, _status_code, _headers = delete_decrypt_workbook_request.create_http_request(@api_client,opts )
       return data
    end

    # Excel protection.

    def post_protect_workbook( post_protect_workbook_request, opts = {})

       data, _status_code, _headers = post_protect_workbook_request.create_http_request(@api_client,opts )
       return data
    end

    # Excel unprotection.

    def delete_un_protect_workbook( delete_un_protect_workbook_request, opts = {})

       data, _status_code, _headers = delete_un_protect_workbook_request.create_http_request(@api_client,opts )
       return data
    end

    # Excel file write protection.

    def put_document_protect_from_changes( put_document_protect_from_changes_request, opts = {})

       data, _status_code, _headers = put_document_protect_from_changes_request.create_http_request(@api_client,opts )
       return data
    end

    # Excel file cancel write protection.

    def delete_document_un_protect_from_changes( delete_document_un_protect_from_changes_request, opts = {})

       data, _status_code, _headers = delete_document_un_protect_from_changes_request.create_http_request(@api_client,opts )
       return data
    end

    # Unlock Excel files.

    def post_unlock( post_unlock_request, opts = {})

       data, _status_code, _headers = post_unlock_request.create_http_request(@api_client,opts )
       return data
    end

    # Lock Excel files.

    def post_lock( post_lock_request, opts = {})

       data, _status_code, _headers = post_lock_request.create_http_request(@api_client,opts )
       return data
    end

    # Excel files encryption.

    def post_protect( post_protect_request, opts = {})

       data, _status_code, _headers = post_protect_request.create_http_request(@api_client,opts )
       return data
    end

    # Copy content from the source range to the destination range in the worksheet.

    def post_worksheet_cells_ranges_copy( post_worksheet_cells_ranges_copy_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_ranges_copy_request.create_http_request(@api_client,opts )
       return data
    end

    # Merge a range of cells into a single cell.

    def post_worksheet_cells_range_merge( post_worksheet_cells_range_merge_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_merge_request.create_http_request(@api_client,opts )
       return data
    end

    # Unmerge merged cells within this range.

    def post_worksheet_cells_range_un_merge( post_worksheet_cells_range_un_merge_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_un_merge_request.create_http_request(@api_client,opts )
       return data
    end

    # Set the style for the specified range.

    def post_worksheet_cells_range_style( post_worksheet_cells_range_style_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve the values of cells within the specified range.

    def get_worksheet_cells_range_value( get_worksheet_cells_range_value_request, opts = {})

       data, _status_code, _headers = get_worksheet_cells_range_value_request.create_http_request(@api_client,opts )
       return data
    end

    # Assign a value to the range; if necessary, the value will be converted to another data type, and the cell's number format will be reset.

    def post_worksheet_cells_range_value( post_worksheet_cells_range_value_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_value_request.create_http_request(@api_client,opts )
       return data
    end

    # Move the current range to the destination range.

    def post_worksheet_cells_range_move_to( post_worksheet_cells_range_move_to_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_move_to_request.create_http_request(@api_client,opts )
       return data
    end

    # Perform data sorting around a range of cells.

    def post_worksheet_cells_range_sort( post_worksheet_cells_range_sort_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_sort_request.create_http_request(@api_client,opts )
       return data
    end

    # Apply an outline border around a range of cells.

    def post_worksheet_cells_range_outline_border( post_worksheet_cells_range_outline_border_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_outline_border_request.create_http_request(@api_client,opts )
       return data
    end

    # Set the column width of the specified range.

    def post_worksheet_cells_range_column_width( post_worksheet_cells_range_column_width_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_column_width_request.create_http_request(@api_client,opts )
       return data
    end

    # Sets row height of range.

    def post_worksheet_cells_range_row_height( post_worksheet_cells_range_row_height_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_row_height_request.create_http_request(@api_client,opts )
       return data
    end


    def post_worksheet_cells_range_to_image( post_worksheet_cells_range_to_image_request, opts = {})

       data, _status_code, _headers = post_worksheet_cells_range_to_image_request.create_http_request(@api_client,opts )
       return data
    end

    # Insert a range of cells and shift existing cells based on the specified shift option.

    def put_worksheet_cells_range( put_worksheet_cells_range_request, opts = {})

       data, _status_code, _headers = put_worksheet_cells_range_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a range of cells and shift existing cells based on the specified shift option.

    def delete_worksheet_cells_range( delete_worksheet_cells_range_request, opts = {})

       data, _status_code, _headers = delete_worksheet_cells_range_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of shapes in the worksheet.

    def get_worksheet_shapes( get_worksheet_shapes_request, opts = {})

       data, _status_code, _headers = get_worksheet_shapes_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve description of shape in the worksheet.

    def get_worksheet_shape( get_worksheet_shape_request, opts = {})

       data, _status_code, _headers = get_worksheet_shape_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a shape in the worksheet.

    def put_worksheet_shape( put_worksheet_shape_request, opts = {})

       data, _status_code, _headers = put_worksheet_shape_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all shapes in the worksheet.

    def delete_worksheet_shapes( delete_worksheet_shapes_request, opts = {})

       data, _status_code, _headers = delete_worksheet_shapes_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a shape in the worksheet.

    def delete_worksheet_shape( delete_worksheet_shape_request, opts = {})

       data, _status_code, _headers = delete_worksheet_shape_request.create_http_request(@api_client,opts )
       return data
    end

    # Update a shape in the worksheet.

    def post_worksheet_shape( post_worksheet_shape_request, opts = {})

       data, _status_code, _headers = post_worksheet_shape_request.create_http_request(@api_client,opts )
       return data
    end

    # Group shapes in the worksheet.

    def post_worksheet_group_shape( post_worksheet_group_shape_request, opts = {})

       data, _status_code, _headers = post_worksheet_group_shape_request.create_http_request(@api_client,opts )
       return data
    end

    # Ungroup shapes in the worksheet.

    def post_worksheet_ungroup_shape( post_worksheet_ungroup_shape_request, opts = {})

       data, _status_code, _headers = post_worksheet_ungroup_shape_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of sparkline groups in the worksheet.

    def get_worksheet_sparkline_groups( get_worksheet_sparkline_groups_request, opts = {})

       data, _status_code, _headers = get_worksheet_sparkline_groups_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve description of a sparkline group in the worksheet.

    def get_worksheet_sparkline_group( get_worksheet_sparkline_group_request, opts = {})

       data, _status_code, _headers = get_worksheet_sparkline_group_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete sparkline groups in the worksheet.

    def delete_worksheet_sparkline_groups( delete_worksheet_sparkline_groups_request, opts = {})

       data, _status_code, _headers = delete_worksheet_sparkline_groups_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a sparkline group in the worksheet.

    def delete_worksheet_sparkline_group( delete_worksheet_sparkline_group_request, opts = {})

       data, _status_code, _headers = delete_worksheet_sparkline_group_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a sparkline group in the worksheet.

    def put_worksheet_sparkline_group( put_worksheet_sparkline_group_request, opts = {})

       data, _status_code, _headers = put_worksheet_sparkline_group_request.create_http_request(@api_client,opts )
       return data
    end

    # Update a sparkline group in the worksheet.

    def post_worksheet_sparkline_group( post_worksheet_sparkline_group_request, opts = {})

       data, _status_code, _headers = post_worksheet_sparkline_group_request.create_http_request(@api_client,opts )
       return data
    end


    def post_character_count( post_character_count_request, opts = {})

       data, _status_code, _headers = post_character_count_request.create_http_request(@api_client,opts )
       return data
    end


    def post_words_count( post_words_count_request, opts = {})

       data, _status_code, _headers = post_words_count_request.create_http_request(@api_client,opts )
       return data
    end


    def post_specify_words_count( post_specify_words_count_request, opts = {})

       data, _status_code, _headers = post_specify_words_count_request.create_http_request(@api_client,opts )
       return data
    end

    # Run tasks.

    def post_run_task( post_run_task_request, opts = {})

       data, _status_code, _headers = post_run_task_request.create_http_request(@api_client,opts )
       return data
    end

    # Adds text content to a specified location within a document. It requires an object that defines the text to be added and the insertion location.

    def post_add_text_content( post_add_text_content_request, opts = {})

       data, _status_code, _headers = post_add_text_content_request.create_http_request(@api_client,opts )
       return data
    end

    # The PostTrimContent API is designed to process and trim content within a specified range in a spreadsheet. This API allows users to remove extra spaces, line breaks, or other unnecessary characters from the content of selected cells. It is particularly useful for cleaning up data entries and ensuring consistency in spreadsheet formatting

    def post_trim_content( post_trim_content_request, opts = {})

       data, _status_code, _headers = post_trim_content_request.create_http_request(@api_client,opts )
       return data
    end

    # Managing inconsistent text case in spreadsheets (Excel, Google Sheets, CSV) can be frustrating, especially with large datasets. The PostUpdateWordCase WEB API solves this by automating text case conversions, ensuring clean and standardized data.

    def post_update_word_case( post_update_word_case_request, opts = {})

       data, _status_code, _headers = post_update_word_case_request.create_http_request(@api_client,opts )
       return data
    end

    # A comprehensive set of tools for cleaning text content within selected cells. It allows users to remove specific characters, character sets, and substrings, ensuring that the text is standardized and free from unwanted symbols or sequences.

    def post_remove_characters( post_remove_characters_request, opts = {})

       data, _status_code, _headers = post_remove_characters_request.create_http_request(@api_client,opts )
       return data
    end

    # Enhance Excel data through essential text conversions: convert text to numbers, replace characters and line breaks, and remove accents.

    def post_convert_text( post_convert_text_request, opts = {})

       data, _status_code, _headers = post_convert_text_request.create_http_request(@api_client,opts )
       return data
    end

    # Efficiently remove duplicate substrings from Excel cells. Select a range, specify delimiters, and apply options to eliminate repeated text segments.

    def post_remove_duplicates( post_remove_duplicates_request, opts = {})

       data, _status_code, _headers = post_remove_duplicates_request.create_http_request(@api_client,opts )
       return data
    end

    # Effortlessly extract text and numbers from Excel cells with precise options. This API allows extraction of first/last characters, text between delimiters, and numbers from strings, with output as static values or formulas.

    def post_extract_text( post_extract_text_request, opts = {})

       data, _status_code, _headers = post_extract_text_request.create_http_request(@api_client,opts )
       return data
    end

    # Efficiently divides Excel cell content into columns or rows based on specified delimiters or patterns. Supports Character-based splitting, Custom string splitting, Mask and wildcard splitting for pattern-based division, Line break division, Column or row splitting, Delimiter removal or retention.

    def post_split_text( post_split_text_request, opts = {})

       data, _status_code, _headers = post_split_text_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve the description of the default style for the workbook .

    def get_workbook_default_style( get_workbook_default_style_request, opts = {})

       data, _status_code, _headers = get_workbook_default_style_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve text items in the workbook.

    def get_workbook_text_items( get_workbook_text_items_request, opts = {})

       data, _status_code, _headers = get_workbook_text_items_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve named ranges in the workbook.

    def get_workbook_names( get_workbook_names_request, opts = {})

       data, _status_code, _headers = get_workbook_names_request.create_http_request(@api_client,opts )
       return data
    end

    # Define a new name in the workbook.

    def put_workbook_name( put_workbook_name_request, opts = {})

       data, _status_code, _headers = put_workbook_name_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve description of a named range in the workbook.

    def get_workbook_name( get_workbook_name_request, opts = {})

       data, _status_code, _headers = get_workbook_name_request.create_http_request(@api_client,opts )
       return data
    end

    # Update a named range in the workbook.

    def post_workbook_name( post_workbook_name_request, opts = {})

       data, _status_code, _headers = post_workbook_name_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve the value of a named range in the workbook.

    def get_workbook_name_value( get_workbook_name_value_request, opts = {})

       data, _status_code, _headers = get_workbook_name_value_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all named ranges in the workbook.

    def delete_workbook_names( delete_workbook_names_request, opts = {})

       data, _status_code, _headers = delete_workbook_names_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a named range in the workbook.

    def delete_workbook_name( delete_workbook_name_request, opts = {})

       data, _status_code, _headers = delete_workbook_name_request.create_http_request(@api_client,opts )
       return data
    end

    # Merge a workbook into the existing workbook.

    def post_workbooks_merge( post_workbooks_merge_request, opts = {})

       data, _status_code, _headers = post_workbooks_merge_request.create_http_request(@api_client,opts )
       return data
    end

    # Search for text in the workbook.

    def post_workbooks_text_search( post_workbooks_text_search_request, opts = {})

       data, _status_code, _headers = post_workbooks_text_search_request.create_http_request(@api_client,opts )
       return data
    end

    # Replace text in the workbook.

    def post_workbook_text_replace( post_workbook_text_replace_request, opts = {})

       data, _status_code, _headers = post_workbook_text_replace_request.create_http_request(@api_client,opts )
       return data
    end

    # Smart marker processing.

    def post_workbook_get_smart_marker_result( post_workbook_get_smart_marker_result_request, opts = {})

       data, _status_code, _headers = post_workbook_get_smart_marker_result_request.create_http_request(@api_client,opts )
       return data
    end

    # Create a new workbook using different methods.

    def put_workbook_create( put_workbook_create_request, opts = {})

       data, _status_code, _headers = put_workbook_create_request.create_http_request(@api_client,opts )
       return data
    end

    # Split the workbook with a specific format.

    def post_workbook_split( post_workbook_split_request, opts = {})

       data, _status_code, _headers = post_workbook_split_request.create_http_request(@api_client,opts )
       return data
    end

    # Calculate all formulas in the workbook.

    def post_workbook_calculate_formula( post_workbook_calculate_formula_request, opts = {})

       data, _status_code, _headers = post_workbook_calculate_formula_request.create_http_request(@api_client,opts )
       return data
    end

    # Autofit rows in the workbook.

    def post_autofit_workbook_rows( post_autofit_workbook_rows_request, opts = {})

       data, _status_code, _headers = post_autofit_workbook_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Autofit columns in the workbook.

    def post_autofit_workbook_columns( post_autofit_workbook_columns_request, opts = {})

       data, _status_code, _headers = post_autofit_workbook_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of workbook settings.

    def get_workbook_settings( get_workbook_settings_request, opts = {})

       data, _status_code, _headers = get_workbook_settings_request.create_http_request(@api_client,opts )
       return data
    end

    # Update setting in the workbook.

    def post_workbook_settings( post_workbook_settings_request, opts = {})

       data, _status_code, _headers = post_workbook_settings_request.create_http_request(@api_client,opts )
       return data
    end

    # Set background in the workbook.

    def put_workbook_background( put_workbook_background_request, opts = {})

       data, _status_code, _headers = put_workbook_background_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete background in the workbook.

    def delete_workbook_background( delete_workbook_background_request, opts = {})

       data, _status_code, _headers = delete_workbook_background_request.create_http_request(@api_client,opts )
       return data
    end

    # Set water marker in the workbook.

    def put_workbook_water_marker( put_workbook_water_marker_request, opts = {})

       data, _status_code, _headers = put_workbook_water_marker_request.create_http_request(@api_client,opts )
       return data
    end

    # Get page count in the workbook.

    def get_page_count( get_page_count_request, opts = {})

       data, _status_code, _headers = get_page_count_request.create_http_request(@api_client,opts )
       return data
    end

    # Get all style in the workbook.

    def get_all_styles( get_all_styles_request, opts = {})

       data, _status_code, _headers = get_all_styles_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve the description of worksheets from a workbook.

    def get_worksheets( get_worksheets_request, opts = {})

       data, _status_code, _headers = get_worksheets_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve the worksheet in a specified format from the workbook.

    def get_worksheet_with_format( get_worksheet_with_format_request, opts = {})

       data, _status_code, _headers = get_worksheet_with_format_request.create_http_request(@api_client,opts )
       return data
    end

    # Change worksheet visibility in the workbook.

    def put_change_visibility_worksheet( put_change_visibility_worksheet_request, opts = {})

       data, _status_code, _headers = put_change_visibility_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Set active worksheet index in the workbook.

    def put_active_worksheet( put_active_worksheet_request, opts = {})

       data, _status_code, _headers = put_active_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Insert a new worksheet in the workbook.

    def put_insert_new_worksheet( put_insert_new_worksheet_request, opts = {})

       data, _status_code, _headers = put_insert_new_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a new worksheet in the workbook.

    def put_add_new_worksheet( put_add_new_worksheet_request, opts = {})

       data, _status_code, _headers = put_add_new_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a worksheet in the workbook.

    def delete_worksheet( delete_worksheet_request, opts = {})

       data, _status_code, _headers = delete_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete matched worksheets in the workbook.

    def delete_worksheets( delete_worksheets_request, opts = {})

       data, _status_code, _headers = delete_worksheets_request.create_http_request(@api_client,opts )
       return data
    end

    # Move worksheet in the workbook.

    def post_move_worksheet( post_move_worksheet_request, opts = {})

       data, _status_code, _headers = post_move_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Protect worksheet.

    def put_protect_worksheet( put_protect_worksheet_request, opts = {})

       data, _status_code, _headers = put_protect_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Unprotect worksheet.

    def delete_unprotect_worksheet( delete_unprotect_worksheet_request, opts = {})

       data, _status_code, _headers = delete_unprotect_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve text items in the worksheet.

    def get_worksheet_text_items( get_worksheet_text_items_request, opts = {})

       data, _status_code, _headers = get_worksheet_text_items_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve the description of comments in the worksheet.

    def get_worksheet_comments( get_worksheet_comments_request, opts = {})

       data, _status_code, _headers = get_worksheet_comments_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve the description of comment in the worksheet.

    def get_worksheet_comment( get_worksheet_comment_request, opts = {})

       data, _status_code, _headers = get_worksheet_comment_request.create_http_request(@api_client,opts )
       return data
    end

    # Add cell comment in the worksheet.

    def put_worksheet_comment( put_worksheet_comment_request, opts = {})

       data, _status_code, _headers = put_worksheet_comment_request.create_http_request(@api_client,opts )
       return data
    end

    # Update cell comment in the worksheet.

    def post_worksheet_comment( post_worksheet_comment_request, opts = {})

       data, _status_code, _headers = post_worksheet_comment_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete cell comment in the worksheet.

    def delete_worksheet_comment( delete_worksheet_comment_request, opts = {})

       data, _status_code, _headers = delete_worksheet_comment_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all comments in the worksheet.

    def delete_worksheet_comments( delete_worksheet_comments_request, opts = {})

       data, _status_code, _headers = delete_worksheet_comments_request.create_http_request(@api_client,opts )
       return data
    end

    # Get worksheet merged cells.

    def get_worksheet_merged_cells( get_worksheet_merged_cells_request, opts = {})

       data, _status_code, _headers = get_worksheet_merged_cells_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve description of a merged cell by its index in the worksheet.

    def get_worksheet_merged_cell( get_worksheet_merged_cell_request, opts = {})

       data, _status_code, _headers = get_worksheet_merged_cell_request.create_http_request(@api_client,opts )
       return data
    end

    # Calculate formula in the worksheet.

    def get_worksheet_calculate_formula( get_worksheet_calculate_formula_request, opts = {})

       data, _status_code, _headers = get_worksheet_calculate_formula_request.create_http_request(@api_client,opts )
       return data
    end

    # Calculate formula in the worksheet.

    def post_worksheet_calculate_formula( post_worksheet_calculate_formula_request, opts = {})

       data, _status_code, _headers = post_worksheet_calculate_formula_request.create_http_request(@api_client,opts )
       return data
    end

    # Search for text in the worksheet.

    def post_worksheet_text_search( post_worksheet_text_search_request, opts = {})

       data, _status_code, _headers = post_worksheet_text_search_request.create_http_request(@api_client,opts )
       return data
    end

    # Replace old text with new text in the worksheet.

    def post_worksheet_text_replace( post_worksheet_text_replace_request, opts = {})

       data, _status_code, _headers = post_worksheet_text_replace_request.create_http_request(@api_client,opts )
       return data
    end

    # Sort a range in the worksheet.

    def post_worksheet_range_sort( post_worksheet_range_sort_request, opts = {})

       data, _status_code, _headers = post_worksheet_range_sort_request.create_http_request(@api_client,opts )
       return data
    end

    # Autofit a row in the worksheet.

    def post_autofit_worksheet_row( post_autofit_worksheet_row_request, opts = {})

       data, _status_code, _headers = post_autofit_worksheet_row_request.create_http_request(@api_client,opts )
       return data
    end

    # Autofit rows in the worksheet.

    def post_autofit_worksheet_rows( post_autofit_worksheet_rows_request, opts = {})

       data, _status_code, _headers = post_autofit_worksheet_rows_request.create_http_request(@api_client,opts )
       return data
    end

    # Autofit columns in the worksheet.

    def post_autofit_worksheet_columns( post_autofit_worksheet_columns_request, opts = {})

       data, _status_code, _headers = post_autofit_worksheet_columns_request.create_http_request(@api_client,opts )
       return data
    end

    # Set background image in the worksheet.

    def put_worksheet_background( put_worksheet_background_request, opts = {})

       data, _status_code, _headers = put_worksheet_background_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete background image in the worksheet.

    def delete_worksheet_background( delete_worksheet_background_request, opts = {})

       data, _status_code, _headers = delete_worksheet_background_request.create_http_request(@api_client,opts )
       return data
    end

    # Set freeze panes in the worksheet.

    def put_worksheet_freeze_panes( put_worksheet_freeze_panes_request, opts = {})

       data, _status_code, _headers = put_worksheet_freeze_panes_request.create_http_request(@api_client,opts )
       return data
    end

    # Unfreeze panes in worksheet.

    def delete_worksheet_freeze_panes( delete_worksheet_freeze_panes_request, opts = {})

       data, _status_code, _headers = delete_worksheet_freeze_panes_request.create_http_request(@api_client,opts )
       return data
    end

    # Copy contents and formats from another worksheet.

    def post_copy_worksheet( post_copy_worksheet_request, opts = {})

       data, _status_code, _headers = post_copy_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Rename worksheet in the workbook.

    def post_rename_worksheet( post_rename_worksheet_request, opts = {})

       data, _status_code, _headers = post_rename_worksheet_request.create_http_request(@api_client,opts )
       return data
    end

    # Update worksheet properties in the workbook.

    def post_update_worksheet_property( post_update_worksheet_property_request, opts = {})

       data, _status_code, _headers = post_update_worksheet_property_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of ranges in the worksheets.

    def get_named_ranges( get_named_ranges_request, opts = {})

       data, _status_code, _headers = get_named_ranges_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve values in range.

    def get_named_range_value( get_named_range_value_request, opts = {})

       data, _status_code, _headers = get_named_range_value_request.create_http_request(@api_client,opts )
       return data
    end

    # Update the scaling percentage in the worksheet. It should be between 10 and 400.

    def post_update_worksheet_zoom( post_update_worksheet_zoom_request, opts = {})

       data, _status_code, _headers = post_update_worksheet_zoom_request.create_http_request(@api_client,opts )
       return data
    end

    # Get page count in the worksheet.

    def get_worksheet_page_count( get_worksheet_page_count_request, opts = {})

       data, _status_code, _headers = get_worksheet_page_count_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve descriptions of validations in the worksheet.

    def get_worksheet_validations( get_worksheet_validations_request, opts = {})

       data, _status_code, _headers = get_worksheet_validations_request.create_http_request(@api_client,opts )
       return data
    end

    # Retrieve a validation by its index in the worksheet.

    def get_worksheet_validation( get_worksheet_validation_request, opts = {})

       data, _status_code, _headers = get_worksheet_validation_request.create_http_request(@api_client,opts )
       return data
    end

    # Add a validation at index in the worksheet.

    def put_worksheet_validation( put_worksheet_validation_request, opts = {})

       data, _status_code, _headers = put_worksheet_validation_request.create_http_request(@api_client,opts )
       return data
    end

    # Update a validation by index in the worksheet.

    def post_worksheet_validation( post_worksheet_validation_request, opts = {})

       data, _status_code, _headers = post_worksheet_validation_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete a validation by index in worksheet.

    def delete_worksheet_validation( delete_worksheet_validation_request, opts = {})

       data, _status_code, _headers = delete_worksheet_validation_request.create_http_request(@api_client,opts )
       return data
    end

    # Delete all validations in the worksheet.

    def delete_worksheet_validations( delete_worksheet_validations_request, opts = {})

       data, _status_code, _headers = delete_worksheet_validations_request.create_http_request(@api_client,opts )
       return data
    end
  end
end  
