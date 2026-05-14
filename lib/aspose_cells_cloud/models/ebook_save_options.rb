=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="EbookSaveOptionsrb.cs">
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


require 'date'

module AsposeCellsCloud

  class EbookSaveOptions
        #            
        attr_accessor :export_page_headers
        #            
        attr_accessor :export_page_footers
        #            
        attr_accessor :export_row_column_headings
        #            
        attr_accessor :show_all_sheets
        #            
        attr_accessor :image_options
        #            
        attr_accessor :save_as_single_file
        #            
        attr_accessor :export_hidden_worksheet
        #            
        attr_accessor :export_grid_lines
        #            
        attr_accessor :presentation_preference
        #            
        attr_accessor :cell_css_prefix
        #            
        attr_accessor :table_css_id
        #            
        attr_accessor :is_full_path_link
        #            
        attr_accessor :export_worksheet_css_separately
        #            
        attr_accessor :export_similar_border_style
        #            
        attr_accessor :merge_empty_td_forcely
        #            
        attr_accessor :export_cell_coordinate
        #            
        attr_accessor :export_extra_headings
        #            
        attr_accessor :export_headings
        #            
        attr_accessor :export_formula
        #            
        attr_accessor :add_tooltip_text
        #            
        attr_accessor :export_bogus_row_data
        #            
        attr_accessor :exclude_unused_styles
        #            
        attr_accessor :export_document_properties
        #            
        attr_accessor :export_worksheet_properties
        #            
        attr_accessor :export_workbook_properties
        #            
        attr_accessor :export_frame_scripts_and_properties
        #            
        attr_accessor :attached_files_directory
        #            
        attr_accessor :attached_files_url_prefix
        #            
        attr_accessor :encoding
        #            
        attr_accessor :export_active_worksheet_only
        #            
        attr_accessor :export_chart_image_format
        #            
        attr_accessor :export_images_as_base64
        #            
        attr_accessor :hidden_col_display_type
        #            
        attr_accessor :hidden_row_display_type
        #            
        attr_accessor :html_cross_string_type
        #            
        attr_accessor :is_exp_image_to_temp_dir
        #            
        attr_accessor :page_title
        #            
        attr_accessor :parse_html_tag_in_cell
        #            
        attr_accessor :cell_name_attribute
        #            
        attr_accessor :save_format
        #            
        attr_accessor :cached_file_folder
        #            
        attr_accessor :clear_data
        #            
        attr_accessor :create_directory
        #            
        attr_accessor :enable_http_compression
        #            
        attr_accessor :refresh_chart_cache
        #            
        attr_accessor :sort_names
        #            
        attr_accessor :validate_merged_areas
        #            
        attr_accessor :merge_areas
        #            
        attr_accessor :sort_external_names
        #            
        attr_accessor :check_excel_restriction
        #            
        attr_accessor :update_smart_art
        #            
        attr_accessor :encrypt_document_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'export_page_headers' => :'ExportPageHeaders',
        :'export_page_footers' => :'ExportPageFooters',
        :'export_row_column_headings' => :'ExportRowColumnHeadings',
        :'show_all_sheets' => :'ShowAllSheets',
        :'image_options' => :'ImageOptions',
        :'save_as_single_file' => :'SaveAsSingleFile',
        :'export_hidden_worksheet' => :'ExportHiddenWorksheet',
        :'export_grid_lines' => :'ExportGridLines',
        :'presentation_preference' => :'PresentationPreference',
        :'cell_css_prefix' => :'CellCssPrefix',
        :'table_css_id' => :'TableCssId',
        :'is_full_path_link' => :'IsFullPathLink',
        :'export_worksheet_css_separately' => :'ExportWorksheetCSSSeparately',
        :'export_similar_border_style' => :'ExportSimilarBorderStyle',
        :'merge_empty_td_forcely' => :'MergeEmptyTdForcely',
        :'export_cell_coordinate' => :'ExportCellCoordinate',
        :'export_extra_headings' => :'ExportExtraHeadings',
        :'export_headings' => :'ExportHeadings',
        :'export_formula' => :'ExportFormula',
        :'add_tooltip_text' => :'AddTooltipText',
        :'export_bogus_row_data' => :'ExportBogusRowData',
        :'exclude_unused_styles' => :'ExcludeUnusedStyles',
        :'export_document_properties' => :'ExportDocumentProperties',
        :'export_worksheet_properties' => :'ExportWorksheetProperties',
        :'export_workbook_properties' => :'ExportWorkbookProperties',
        :'export_frame_scripts_and_properties' => :'ExportFrameScriptsAndProperties',
        :'attached_files_directory' => :'AttachedFilesDirectory',
        :'attached_files_url_prefix' => :'AttachedFilesUrlPrefix',
        :'encoding' => :'Encoding',
        :'export_active_worksheet_only' => :'ExportActiveWorksheetOnly',
        :'export_chart_image_format' => :'ExportChartImageFormat',
        :'export_images_as_base64' => :'ExportImagesAsBase64',
        :'hidden_col_display_type' => :'HiddenColDisplayType',
        :'hidden_row_display_type' => :'HiddenRowDisplayType',
        :'html_cross_string_type' => :'HtmlCrossStringType',
        :'is_exp_image_to_temp_dir' => :'IsExpImageToTempDir',
        :'page_title' => :'PageTitle',
        :'parse_html_tag_in_cell' => :'ParseHtmlTagInCell',
        :'cell_name_attribute' => :'CellNameAttribute',
        :'save_format' => :'SaveFormat',
        :'cached_file_folder' => :'CachedFileFolder',
        :'clear_data' => :'ClearData',
        :'create_directory' => :'CreateDirectory',
        :'enable_http_compression' => :'EnableHTTPCompression',
        :'refresh_chart_cache' => :'RefreshChartCache',
        :'sort_names' => :'SortNames',
        :'validate_merged_areas' => :'ValidateMergedAreas',
        :'merge_areas' => :'MergeAreas',
        :'sort_external_names' => :'SortExternalNames',
        :'check_excel_restriction' => :'CheckExcelRestriction',
        :'update_smart_art' => :'UpdateSmartArt',
        :'encrypt_document_properties' => :'EncryptDocumentProperties'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'export_page_headers' => :'BOOLEAN',
        :'export_page_footers' => :'BOOLEAN',
        :'export_row_column_headings' => :'BOOLEAN',
        :'show_all_sheets' => :'BOOLEAN',
        :'image_options' => :'ImageOrPrintOptions',
        :'save_as_single_file' => :'BOOLEAN',
        :'export_hidden_worksheet' => :'BOOLEAN',
        :'export_grid_lines' => :'BOOLEAN',
        :'presentation_preference' => :'BOOLEAN',
        :'cell_css_prefix' => :'String',
        :'table_css_id' => :'String',
        :'is_full_path_link' => :'BOOLEAN',
        :'export_worksheet_css_separately' => :'BOOLEAN',
        :'export_similar_border_style' => :'BOOLEAN',
        :'merge_empty_td_forcely' => :'BOOLEAN',
        :'export_cell_coordinate' => :'BOOLEAN',
        :'export_extra_headings' => :'BOOLEAN',
        :'export_headings' => :'BOOLEAN',
        :'export_formula' => :'BOOLEAN',
        :'add_tooltip_text' => :'BOOLEAN',
        :'export_bogus_row_data' => :'BOOLEAN',
        :'exclude_unused_styles' => :'BOOLEAN',
        :'export_document_properties' => :'BOOLEAN',
        :'export_worksheet_properties' => :'BOOLEAN',
        :'export_workbook_properties' => :'BOOLEAN',
        :'export_frame_scripts_and_properties' => :'BOOLEAN',
        :'attached_files_directory' => :'String',
        :'attached_files_url_prefix' => :'String',
        :'encoding' => :'String',
        :'export_active_worksheet_only' => :'BOOLEAN',
        :'export_chart_image_format' => :'String',
        :'export_images_as_base64' => :'BOOLEAN',
        :'hidden_col_display_type' => :'String',
        :'hidden_row_display_type' => :'String',
        :'html_cross_string_type' => :'String',
        :'is_exp_image_to_temp_dir' => :'BOOLEAN',
        :'page_title' => :'String',
        :'parse_html_tag_in_cell' => :'BOOLEAN',
        :'cell_name_attribute' => :'String',
        :'save_format' => :'String',
        :'cached_file_folder' => :'String',
        :'clear_data' => :'BOOLEAN',
        :'create_directory' => :'BOOLEAN',
        :'enable_http_compression' => :'BOOLEAN',
        :'refresh_chart_cache' => :'BOOLEAN',
        :'sort_names' => :'BOOLEAN',
        :'validate_merged_areas' => :'BOOLEAN',
        :'merge_areas' => :'BOOLEAN',
        :'sort_external_names' => :'BOOLEAN',
        :'check_excel_restriction' => :'BOOLEAN',
        :'update_smart_art' => :'BOOLEAN',
        :'encrypt_document_properties' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ExportPageHeaders')
          self.export_page_headers = attributes[:'ExportPageHeaders']
      end
      if attributes.has_key?(:'ExportPageFooters')
          self.export_page_footers = attributes[:'ExportPageFooters']
      end
      if attributes.has_key?(:'ExportRowColumnHeadings')
          self.export_row_column_headings = attributes[:'ExportRowColumnHeadings']
      end
      if attributes.has_key?(:'ShowAllSheets')
          self.show_all_sheets = attributes[:'ShowAllSheets']
      end
      if attributes.has_key?(:'ImageOptions')
          self.image_options = attributes[:'ImageOptions']
      end
      if attributes.has_key?(:'SaveAsSingleFile')
          self.save_as_single_file = attributes[:'SaveAsSingleFile']
      end
      if attributes.has_key?(:'ExportHiddenWorksheet')
          self.export_hidden_worksheet = attributes[:'ExportHiddenWorksheet']
      end
      if attributes.has_key?(:'ExportGridLines')
          self.export_grid_lines = attributes[:'ExportGridLines']
      end
      if attributes.has_key?(:'PresentationPreference')
          self.presentation_preference = attributes[:'PresentationPreference']
      end
      if attributes.has_key?(:'CellCssPrefix')
          self.cell_css_prefix = attributes[:'CellCssPrefix']
      end
      if attributes.has_key?(:'TableCssId')
          self.table_css_id = attributes[:'TableCssId']
      end
      if attributes.has_key?(:'IsFullPathLink')
          self.is_full_path_link = attributes[:'IsFullPathLink']
      end
      if attributes.has_key?(:'ExportWorksheetCSSSeparately')
          self.export_worksheet_css_separately = attributes[:'ExportWorksheetCSSSeparately']
      end
      if attributes.has_key?(:'ExportSimilarBorderStyle')
          self.export_similar_border_style = attributes[:'ExportSimilarBorderStyle']
      end
      if attributes.has_key?(:'MergeEmptyTdForcely')
          self.merge_empty_td_forcely = attributes[:'MergeEmptyTdForcely']
      end
      if attributes.has_key?(:'ExportCellCoordinate')
          self.export_cell_coordinate = attributes[:'ExportCellCoordinate']
      end
      if attributes.has_key?(:'ExportExtraHeadings')
          self.export_extra_headings = attributes[:'ExportExtraHeadings']
      end
      if attributes.has_key?(:'ExportHeadings')
          self.export_headings = attributes[:'ExportHeadings']
      end
      if attributes.has_key?(:'ExportFormula')
          self.export_formula = attributes[:'ExportFormula']
      end
      if attributes.has_key?(:'AddTooltipText')
          self.add_tooltip_text = attributes[:'AddTooltipText']
      end
      if attributes.has_key?(:'ExportBogusRowData')
          self.export_bogus_row_data = attributes[:'ExportBogusRowData']
      end
      if attributes.has_key?(:'ExcludeUnusedStyles')
          self.exclude_unused_styles = attributes[:'ExcludeUnusedStyles']
      end
      if attributes.has_key?(:'ExportDocumentProperties')
          self.export_document_properties = attributes[:'ExportDocumentProperties']
      end
      if attributes.has_key?(:'ExportWorksheetProperties')
          self.export_worksheet_properties = attributes[:'ExportWorksheetProperties']
      end
      if attributes.has_key?(:'ExportWorkbookProperties')
          self.export_workbook_properties = attributes[:'ExportWorkbookProperties']
      end
      if attributes.has_key?(:'ExportFrameScriptsAndProperties')
          self.export_frame_scripts_and_properties = attributes[:'ExportFrameScriptsAndProperties']
      end
      if attributes.has_key?(:'AttachedFilesDirectory')
          self.attached_files_directory = attributes[:'AttachedFilesDirectory']
      end
      if attributes.has_key?(:'AttachedFilesUrlPrefix')
          self.attached_files_url_prefix = attributes[:'AttachedFilesUrlPrefix']
      end
      if attributes.has_key?(:'Encoding')
          self.encoding = attributes[:'Encoding']
      end
      if attributes.has_key?(:'ExportActiveWorksheetOnly')
          self.export_active_worksheet_only = attributes[:'ExportActiveWorksheetOnly']
      end
      if attributes.has_key?(:'ExportChartImageFormat')
          self.export_chart_image_format = attributes[:'ExportChartImageFormat']
      end
      if attributes.has_key?(:'ExportImagesAsBase64')
          self.export_images_as_base64 = attributes[:'ExportImagesAsBase64']
      end
      if attributes.has_key?(:'HiddenColDisplayType')
          self.hidden_col_display_type = attributes[:'HiddenColDisplayType']
      end
      if attributes.has_key?(:'HiddenRowDisplayType')
          self.hidden_row_display_type = attributes[:'HiddenRowDisplayType']
      end
      if attributes.has_key?(:'HtmlCrossStringType')
          self.html_cross_string_type = attributes[:'HtmlCrossStringType']
      end
      if attributes.has_key?(:'IsExpImageToTempDir')
          self.is_exp_image_to_temp_dir = attributes[:'IsExpImageToTempDir']
      end
      if attributes.has_key?(:'PageTitle')
          self.page_title = attributes[:'PageTitle']
      end
      if attributes.has_key?(:'ParseHtmlTagInCell')
          self.parse_html_tag_in_cell = attributes[:'ParseHtmlTagInCell']
      end
      if attributes.has_key?(:'CellNameAttribute')
          self.cell_name_attribute = attributes[:'CellNameAttribute']
      end
      if attributes.has_key?(:'SaveFormat')
          self.save_format = attributes[:'SaveFormat']
      end
      if attributes.has_key?(:'CachedFileFolder')
          self.cached_file_folder = attributes[:'CachedFileFolder']
      end
      if attributes.has_key?(:'ClearData')
          self.clear_data = attributes[:'ClearData']
      end
      if attributes.has_key?(:'CreateDirectory')
          self.create_directory = attributes[:'CreateDirectory']
      end
      if attributes.has_key?(:'EnableHTTPCompression')
          self.enable_http_compression = attributes[:'EnableHTTPCompression']
      end
      if attributes.has_key?(:'RefreshChartCache')
          self.refresh_chart_cache = attributes[:'RefreshChartCache']
      end
      if attributes.has_key?(:'SortNames')
          self.sort_names = attributes[:'SortNames']
      end
      if attributes.has_key?(:'ValidateMergedAreas')
          self.validate_merged_areas = attributes[:'ValidateMergedAreas']
      end
      if attributes.has_key?(:'MergeAreas')
          self.merge_areas = attributes[:'MergeAreas']
      end
      if attributes.has_key?(:'SortExternalNames')
          self.sort_external_names = attributes[:'SortExternalNames']
      end
      if attributes.has_key?(:'CheckExcelRestriction')
          self.check_excel_restriction = attributes[:'CheckExcelRestriction']
      end
      if attributes.has_key?(:'UpdateSmartArt')
          self.update_smart_art = attributes[:'UpdateSmartArt']
      end
      if attributes.has_key?(:'EncryptDocumentProperties')
          self.encrypt_document_properties = attributes[:'EncryptDocumentProperties']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @export_page_headers.nil?
          invalid_properties.push("invalid value for 'export_page_headers', export_page_headers cannot be nil.")
      end
      if @export_page_footers.nil?
          invalid_properties.push("invalid value for 'export_page_footers', export_page_footers cannot be nil.")
      end
      if @export_row_column_headings.nil?
          invalid_properties.push("invalid value for 'export_row_column_headings', export_row_column_headings cannot be nil.")
      end
      if @show_all_sheets.nil?
          invalid_properties.push("invalid value for 'show_all_sheets', show_all_sheets cannot be nil.")
      end
      if @image_options.nil?
          invalid_properties.push("invalid value for 'image_options', image_options cannot be nil.")
      end
      if @save_as_single_file.nil?
          invalid_properties.push("invalid value for 'save_as_single_file', save_as_single_file cannot be nil.")
      end
      if @export_hidden_worksheet.nil?
          invalid_properties.push("invalid value for 'export_hidden_worksheet', export_hidden_worksheet cannot be nil.")
      end
      if @export_grid_lines.nil?
          invalid_properties.push("invalid value for 'export_grid_lines', export_grid_lines cannot be nil.")
      end
      if @presentation_preference.nil?
          invalid_properties.push("invalid value for 'presentation_preference', presentation_preference cannot be nil.")
      end
      if @cell_css_prefix.nil?
          invalid_properties.push("invalid value for 'cell_css_prefix', cell_css_prefix cannot be nil.")
      end
      if @table_css_id.nil?
          invalid_properties.push("invalid value for 'table_css_id', table_css_id cannot be nil.")
      end
      if @is_full_path_link.nil?
          invalid_properties.push("invalid value for 'is_full_path_link', is_full_path_link cannot be nil.")
      end
      if @export_worksheet_css_separately.nil?
          invalid_properties.push("invalid value for 'export_worksheet_css_separately', export_worksheet_css_separately cannot be nil.")
      end
      if @export_similar_border_style.nil?
          invalid_properties.push("invalid value for 'export_similar_border_style', export_similar_border_style cannot be nil.")
      end
      if @merge_empty_td_forcely.nil?
          invalid_properties.push("invalid value for 'merge_empty_td_forcely', merge_empty_td_forcely cannot be nil.")
      end
      if @export_cell_coordinate.nil?
          invalid_properties.push("invalid value for 'export_cell_coordinate', export_cell_coordinate cannot be nil.")
      end
      if @export_extra_headings.nil?
          invalid_properties.push("invalid value for 'export_extra_headings', export_extra_headings cannot be nil.")
      end
      if @export_headings.nil?
          invalid_properties.push("invalid value for 'export_headings', export_headings cannot be nil.")
      end
      if @export_formula.nil?
          invalid_properties.push("invalid value for 'export_formula', export_formula cannot be nil.")
      end
      if @add_tooltip_text.nil?
          invalid_properties.push("invalid value for 'add_tooltip_text', add_tooltip_text cannot be nil.")
      end
      if @export_bogus_row_data.nil?
          invalid_properties.push("invalid value for 'export_bogus_row_data', export_bogus_row_data cannot be nil.")
      end
      if @exclude_unused_styles.nil?
          invalid_properties.push("invalid value for 'exclude_unused_styles', exclude_unused_styles cannot be nil.")
      end
      if @export_document_properties.nil?
          invalid_properties.push("invalid value for 'export_document_properties', export_document_properties cannot be nil.")
      end
      if @export_worksheet_properties.nil?
          invalid_properties.push("invalid value for 'export_worksheet_properties', export_worksheet_properties cannot be nil.")
      end
      if @export_workbook_properties.nil?
          invalid_properties.push("invalid value for 'export_workbook_properties', export_workbook_properties cannot be nil.")
      end
      if @export_frame_scripts_and_properties.nil?
          invalid_properties.push("invalid value for 'export_frame_scripts_and_properties', export_frame_scripts_and_properties cannot be nil.")
      end
      if @attached_files_directory.nil?
          invalid_properties.push("invalid value for 'attached_files_directory', attached_files_directory cannot be nil.")
      end
      if @attached_files_url_prefix.nil?
          invalid_properties.push("invalid value for 'attached_files_url_prefix', attached_files_url_prefix cannot be nil.")
      end
      if @encoding.nil?
          invalid_properties.push("invalid value for 'encoding', encoding cannot be nil.")
      end
      if @export_active_worksheet_only.nil?
          invalid_properties.push("invalid value for 'export_active_worksheet_only', export_active_worksheet_only cannot be nil.")
      end
      if @export_chart_image_format.nil?
          invalid_properties.push("invalid value for 'export_chart_image_format', export_chart_image_format cannot be nil.")
      end
      if @export_images_as_base64.nil?
          invalid_properties.push("invalid value for 'export_images_as_base64', export_images_as_base64 cannot be nil.")
      end
      if @hidden_col_display_type.nil?
          invalid_properties.push("invalid value for 'hidden_col_display_type', hidden_col_display_type cannot be nil.")
      end
      if @hidden_row_display_type.nil?
          invalid_properties.push("invalid value for 'hidden_row_display_type', hidden_row_display_type cannot be nil.")
      end
      if @html_cross_string_type.nil?
          invalid_properties.push("invalid value for 'html_cross_string_type', html_cross_string_type cannot be nil.")
      end
      if @is_exp_image_to_temp_dir.nil?
          invalid_properties.push("invalid value for 'is_exp_image_to_temp_dir', is_exp_image_to_temp_dir cannot be nil.")
      end
      if @page_title.nil?
          invalid_properties.push("invalid value for 'page_title', page_title cannot be nil.")
      end
      if @parse_html_tag_in_cell.nil?
          invalid_properties.push("invalid value for 'parse_html_tag_in_cell', parse_html_tag_in_cell cannot be nil.")
      end
      if @cell_name_attribute.nil?
          invalid_properties.push("invalid value for 'cell_name_attribute', cell_name_attribute cannot be nil.")
      end
      if @save_format.nil?
          invalid_properties.push("invalid value for 'save_format', save_format cannot be nil.")
      end
      if @cached_file_folder.nil?
          invalid_properties.push("invalid value for 'cached_file_folder', cached_file_folder cannot be nil.")
      end
      if @clear_data.nil?
          invalid_properties.push("invalid value for 'clear_data', clear_data cannot be nil.")
      end
      if @create_directory.nil?
          invalid_properties.push("invalid value for 'create_directory', create_directory cannot be nil.")
      end
      if @enable_http_compression.nil?
          invalid_properties.push("invalid value for 'enable_http_compression', enable_http_compression cannot be nil.")
      end
      if @refresh_chart_cache.nil?
          invalid_properties.push("invalid value for 'refresh_chart_cache', refresh_chart_cache cannot be nil.")
      end
      if @sort_names.nil?
          invalid_properties.push("invalid value for 'sort_names', sort_names cannot be nil.")
      end
      if @validate_merged_areas.nil?
          invalid_properties.push("invalid value for 'validate_merged_areas', validate_merged_areas cannot be nil.")
      end
      if @merge_areas.nil?
          invalid_properties.push("invalid value for 'merge_areas', merge_areas cannot be nil.")
      end
      if @sort_external_names.nil?
          invalid_properties.push("invalid value for 'sort_external_names', sort_external_names cannot be nil.")
      end
      if @check_excel_restriction.nil?
          invalid_properties.push("invalid value for 'check_excel_restriction', check_excel_restriction cannot be nil.")
      end
      if @update_smart_art.nil?
          invalid_properties.push("invalid value for 'update_smart_art', update_smart_art cannot be nil.")
      end
      if @encrypt_document_properties.nil?
          invalid_properties.push("invalid value for 'encrypt_document_properties', encrypt_document_properties cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @export_page_headers.nil?
      return false if @export_page_footers.nil?
      return false if @export_row_column_headings.nil?
      return false if @show_all_sheets.nil?
      return false if @image_options.nil?
      return false if @save_as_single_file.nil?
      return false if @export_hidden_worksheet.nil?
      return false if @export_grid_lines.nil?
      return false if @presentation_preference.nil?
      return false if @cell_css_prefix.nil?
      return false if @table_css_id.nil?
      return false if @is_full_path_link.nil?
      return false if @export_worksheet_css_separately.nil?
      return false if @export_similar_border_style.nil?
      return false if @merge_empty_td_forcely.nil?
      return false if @export_cell_coordinate.nil?
      return false if @export_extra_headings.nil?
      return false if @export_headings.nil?
      return false if @export_formula.nil?
      return false if @add_tooltip_text.nil?
      return false if @export_bogus_row_data.nil?
      return false if @exclude_unused_styles.nil?
      return false if @export_document_properties.nil?
      return false if @export_worksheet_properties.nil?
      return false if @export_workbook_properties.nil?
      return false if @export_frame_scripts_and_properties.nil?
      return false if @attached_files_directory.nil?
      return false if @attached_files_url_prefix.nil?
      return false if @encoding.nil?
      return false if @export_active_worksheet_only.nil?
      return false if @export_chart_image_format.nil?
      return false if @export_images_as_base64.nil?
      return false if @hidden_col_display_type.nil?
      return false if @hidden_row_display_type.nil?
      return false if @html_cross_string_type.nil?
      return false if @is_exp_image_to_temp_dir.nil?
      return false if @page_title.nil?
      return false if @parse_html_tag_in_cell.nil?
      return false if @cell_name_attribute.nil?
      return false if @save_format.nil?
      return false if @cached_file_folder.nil?
      return false if @clear_data.nil?
      return false if @create_directory.nil?
      return false if @enable_http_compression.nil?
      return false if @refresh_chart_cache.nil?
      return false if @sort_names.nil?
      return false if @validate_merged_areas.nil?
      return false if @merge_areas.nil?
      return false if @sort_external_names.nil?
      return false if @check_excel_restriction.nil?
      return false if @update_smart_art.nil?
      return false if @encrypt_document_properties.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          export_page_headers == o.export_page_headers &&
          export_page_footers == o.export_page_footers &&
          export_row_column_headings == o.export_row_column_headings &&
          show_all_sheets == o.show_all_sheets &&
          image_options == o.image_options &&
          save_as_single_file == o.save_as_single_file &&
          export_hidden_worksheet == o.export_hidden_worksheet &&
          export_grid_lines == o.export_grid_lines &&
          presentation_preference == o.presentation_preference &&
          cell_css_prefix == o.cell_css_prefix &&
          table_css_id == o.table_css_id &&
          is_full_path_link == o.is_full_path_link &&
          export_worksheet_css_separately == o.export_worksheet_css_separately &&
          export_similar_border_style == o.export_similar_border_style &&
          merge_empty_td_forcely == o.merge_empty_td_forcely &&
          export_cell_coordinate == o.export_cell_coordinate &&
          export_extra_headings == o.export_extra_headings &&
          export_headings == o.export_headings &&
          export_formula == o.export_formula &&
          add_tooltip_text == o.add_tooltip_text &&
          export_bogus_row_data == o.export_bogus_row_data &&
          exclude_unused_styles == o.exclude_unused_styles &&
          export_document_properties == o.export_document_properties &&
          export_worksheet_properties == o.export_worksheet_properties &&
          export_workbook_properties == o.export_workbook_properties &&
          export_frame_scripts_and_properties == o.export_frame_scripts_and_properties &&
          attached_files_directory == o.attached_files_directory &&
          attached_files_url_prefix == o.attached_files_url_prefix &&
          encoding == o.encoding &&
          export_active_worksheet_only == o.export_active_worksheet_only &&
          export_chart_image_format == o.export_chart_image_format &&
          export_images_as_base64 == o.export_images_as_base64 &&
          hidden_col_display_type == o.hidden_col_display_type &&
          hidden_row_display_type == o.hidden_row_display_type &&
          html_cross_string_type == o.html_cross_string_type &&
          is_exp_image_to_temp_dir == o.is_exp_image_to_temp_dir &&
          page_title == o.page_title &&
          parse_html_tag_in_cell == o.parse_html_tag_in_cell &&
          cell_name_attribute == o.cell_name_attribute &&
          save_format == o.save_format &&
          cached_file_folder == o.cached_file_folder &&
          clear_data == o.clear_data &&
          create_directory == o.create_directory &&
          enable_http_compression == o.enable_http_compression &&
          refresh_chart_cache == o.refresh_chart_cache &&
          sort_names == o.sort_names &&
          validate_merged_areas == o.validate_merged_areas &&
          merge_areas == o.merge_areas &&
          sort_external_names == o.sort_external_names &&
          check_excel_restriction == o.check_excel_restriction &&
          update_smart_art == o.update_smart_art &&
          encrypt_document_properties == o.encrypt_document_properties 
          std_dev == o.std_dev
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [ export_page_headers , export_page_footers , export_row_column_headings , show_all_sheets , image_options , save_as_single_file , export_hidden_worksheet , export_grid_lines , presentation_preference , cell_css_prefix , table_css_id , is_full_path_link , export_worksheet_css_separately , export_similar_border_style , merge_empty_td_forcely , export_cell_coordinate , export_extra_headings , export_headings , export_formula , add_tooltip_text , export_bogus_row_data , exclude_unused_styles , export_document_properties , export_worksheet_properties , export_workbook_properties , export_frame_scripts_and_properties , attached_files_directory , attached_files_url_prefix , encoding , export_active_worksheet_only , export_chart_image_format , export_images_as_base64 , hidden_col_display_type , hidden_row_display_type , html_cross_string_type , is_exp_image_to_temp_dir , page_title , parse_html_tag_in_cell , cell_name_attribute , save_format , cached_file_folder , clear_data , create_directory , enable_http_compression , refresh_chart_cache , sort_names , validate_merged_areas , merge_areas , sort_external_names , check_excel_restriction , update_smart_art , encrypt_document_properties ].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = AsposeCellsCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
