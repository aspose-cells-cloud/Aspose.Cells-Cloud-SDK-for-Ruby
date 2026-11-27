=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="HtmlSaveOptions.rb">
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
require_relative 'save_options'

module AsposeCellsCloud

  class HtmlSaveOptions < SaveOptions
    # @return [BOOLEAN]
    attr_accessor :export_page_headers
    # @return [BOOLEAN]
    attr_accessor :export_page_footers
    # @return [BOOLEAN]
    attr_accessor :export_row_column_headings
    # @return [BOOLEAN]
    attr_accessor :show_all_sheets
    # @return [ImageOrPrintOptions]
    attr_accessor :image_options
    # @return [BOOLEAN]
    attr_accessor :save_as_single_file
    # @return [BOOLEAN]
    attr_accessor :export_hidden_worksheet
    # @return [BOOLEAN]
    attr_accessor :export_grid_lines
    # @return [BOOLEAN]
    attr_accessor :presentation_preference
    # @return [String]
    attr_accessor :cell_css_prefix
    # @return [String]
    attr_accessor :table_css_id
    # @return [BOOLEAN]
    attr_accessor :is_full_path_link
    # @return [BOOLEAN]
    attr_accessor :export_worksheet_css_separately
    # @return [BOOLEAN]
    attr_accessor :export_similar_border_style
    # @return [BOOLEAN]
    attr_accessor :merge_empty_td_forcely
    # @return [BOOLEAN]
    attr_accessor :export_cell_coordinate
    # @return [BOOLEAN]
    attr_accessor :export_extra_headings
    # @return [BOOLEAN]
    attr_accessor :export_headings
    # @return [BOOLEAN]
    attr_accessor :export_formula
    # @return [BOOLEAN]
    attr_accessor :add_tooltip_text
    # @return [BOOLEAN]
    attr_accessor :export_bogus_row_data
    # @return [BOOLEAN]
    attr_accessor :exclude_unused_styles
    # @return [BOOLEAN]
    attr_accessor :export_document_properties
    # @return [BOOLEAN]
    attr_accessor :export_worksheet_properties
    # @return [BOOLEAN]
    attr_accessor :export_workbook_properties
    # @return [BOOLEAN]
    attr_accessor :export_frame_scripts_and_properties
    # @return [String]
    attr_accessor :attached_files_directory
    # @return [String]
    attr_accessor :attached_files_url_prefix
    # @return [String]
    attr_accessor :encoding
    # @return [BOOLEAN]
    attr_accessor :export_active_worksheet_only
    # @return [String]
    attr_accessor :export_chart_image_format
    # @return [BOOLEAN]
    attr_accessor :export_images_as_base64
    # @return [String]
    attr_accessor :hidden_col_display_type
    # @return [String]
    attr_accessor :hidden_row_display_type
    # @return [String]
    attr_accessor :html_cross_string_type
    # @return [BOOLEAN]
    attr_accessor :is_exp_image_to_temp_dir
    # @return [String]
    attr_accessor :page_title
    # @return [BOOLEAN]
    attr_accessor :parse_html_tag_in_cell
    # @return [String]
    attr_accessor :cell_name_attribute
    # @return [String]
    attr_accessor :save_format
    # @return [String]
    attr_accessor :cached_file_folder
    # @return [BOOLEAN]
    attr_accessor :clear_data
    # @return [BOOLEAN]
    attr_accessor :create_directory
    # @return [BOOLEAN]
    attr_accessor :enable_http_compression
    # @return [BOOLEAN]
    attr_accessor :refresh_chart_cache
    # @return [BOOLEAN]
    attr_accessor :sort_names
    # @return [BOOLEAN]
    attr_accessor :validate_merged_areas
    # @return [BOOLEAN]
    attr_accessor :merge_areas
    # @return [BOOLEAN]
    attr_accessor :sort_external_names
    # @return [BOOLEAN]
    attr_accessor :check_excel_restriction
    # @return [BOOLEAN]
    attr_accessor :update_smart_art
    # @return [BOOLEAN]
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
        :'encrypt_document_properties' => :'EncryptDocumentProperties',
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
        :'encrypt_document_properties' => :'BOOLEAN',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.export_page_headers = attributes[:export_page_headers] if attributes.key?(:export_page_headers)
      self.export_page_footers = attributes[:export_page_footers] if attributes.key?(:export_page_footers)
      self.export_row_column_headings = attributes[:export_row_column_headings] if attributes.key?(:export_row_column_headings)
      self.show_all_sheets = attributes[:show_all_sheets] if attributes.key?(:show_all_sheets)
      self.image_options = attributes[:image_options] if attributes.key?(:image_options)
      self.save_as_single_file = attributes[:save_as_single_file] if attributes.key?(:save_as_single_file)
      self.export_hidden_worksheet = attributes[:export_hidden_worksheet] if attributes.key?(:export_hidden_worksheet)
      self.export_grid_lines = attributes[:export_grid_lines] if attributes.key?(:export_grid_lines)
      self.presentation_preference = attributes[:presentation_preference] if attributes.key?(:presentation_preference)
      self.cell_css_prefix = attributes[:cell_css_prefix] if attributes.key?(:cell_css_prefix)
      self.table_css_id = attributes[:table_css_id] if attributes.key?(:table_css_id)
      self.is_full_path_link = attributes[:is_full_path_link] if attributes.key?(:is_full_path_link)
      self.export_worksheet_css_separately = attributes[:export_worksheet_css_separately] if attributes.key?(:export_worksheet_css_separately)
      self.export_similar_border_style = attributes[:export_similar_border_style] if attributes.key?(:export_similar_border_style)
      self.merge_empty_td_forcely = attributes[:merge_empty_td_forcely] if attributes.key?(:merge_empty_td_forcely)
      self.export_cell_coordinate = attributes[:export_cell_coordinate] if attributes.key?(:export_cell_coordinate)
      self.export_extra_headings = attributes[:export_extra_headings] if attributes.key?(:export_extra_headings)
      self.export_headings = attributes[:export_headings] if attributes.key?(:export_headings)
      self.export_formula = attributes[:export_formula] if attributes.key?(:export_formula)
      self.add_tooltip_text = attributes[:add_tooltip_text] if attributes.key?(:add_tooltip_text)
      self.export_bogus_row_data = attributes[:export_bogus_row_data] if attributes.key?(:export_bogus_row_data)
      self.exclude_unused_styles = attributes[:exclude_unused_styles] if attributes.key?(:exclude_unused_styles)
      self.export_document_properties = attributes[:export_document_properties] if attributes.key?(:export_document_properties)
      self.export_worksheet_properties = attributes[:export_worksheet_properties] if attributes.key?(:export_worksheet_properties)
      self.export_workbook_properties = attributes[:export_workbook_properties] if attributes.key?(:export_workbook_properties)
      self.export_frame_scripts_and_properties = attributes[:export_frame_scripts_and_properties] if attributes.key?(:export_frame_scripts_and_properties)
      self.attached_files_directory = attributes[:attached_files_directory] if attributes.key?(:attached_files_directory)
      self.attached_files_url_prefix = attributes[:attached_files_url_prefix] if attributes.key?(:attached_files_url_prefix)
      self.encoding = attributes[:encoding] if attributes.key?(:encoding)
      self.export_active_worksheet_only = attributes[:export_active_worksheet_only] if attributes.key?(:export_active_worksheet_only)
      self.export_chart_image_format = attributes[:export_chart_image_format] if attributes.key?(:export_chart_image_format)
      self.export_images_as_base64 = attributes[:export_images_as_base64] if attributes.key?(:export_images_as_base64)
      self.hidden_col_display_type = attributes[:hidden_col_display_type] if attributes.key?(:hidden_col_display_type)
      self.hidden_row_display_type = attributes[:hidden_row_display_type] if attributes.key?(:hidden_row_display_type)
      self.html_cross_string_type = attributes[:html_cross_string_type] if attributes.key?(:html_cross_string_type)
      self.is_exp_image_to_temp_dir = attributes[:is_exp_image_to_temp_dir] if attributes.key?(:is_exp_image_to_temp_dir)
      self.page_title = attributes[:page_title] if attributes.key?(:page_title)
      self.parse_html_tag_in_cell = attributes[:parse_html_tag_in_cell] if attributes.key?(:parse_html_tag_in_cell)
      self.cell_name_attribute = attributes[:cell_name_attribute] if attributes.key?(:cell_name_attribute)
      self.save_format = attributes[:save_format] if attributes.key?(:save_format)
      self.cached_file_folder = attributes[:cached_file_folder] if attributes.key?(:cached_file_folder)
      self.clear_data = attributes[:clear_data] if attributes.key?(:clear_data)
      self.create_directory = attributes[:create_directory] if attributes.key?(:create_directory)
      self.enable_http_compression = attributes[:enable_http_compression] if attributes.key?(:enable_http_compression)
      self.refresh_chart_cache = attributes[:refresh_chart_cache] if attributes.key?(:refresh_chart_cache)
      self.sort_names = attributes[:sort_names] if attributes.key?(:sort_names)
      self.validate_merged_areas = attributes[:validate_merged_areas] if attributes.key?(:validate_merged_areas)
      self.merge_areas = attributes[:merge_areas] if attributes.key?(:merge_areas)
      self.sort_external_names = attributes[:sort_external_names] if attributes.key?(:sort_external_names)
      self.check_excel_restriction = attributes[:check_excel_restriction] if attributes.key?(:check_excel_restriction)
      self.update_smart_art = attributes[:update_smart_art] if attributes.key?(:update_smart_art)
      self.encrypt_document_properties = attributes[:encrypt_document_properties] if attributes.key?(:encrypt_document_properties)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return [Array] invalid properties with the reasons
    def list_invalid_properties
      invalid_properties = []
      return invalid_properties
    end

    # Check to see if all the properties in the model are valid
    # @return [Boolean] true if the model is valid
    def valid?
      return list_invalid_properties.empty?
    end

    # Returns the object in the form of hash (JSON key names, JSON-ready values)
    # @return [Hash] the model in the form of a hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        hash[param] = case value
                      when Array
                        value.compact.map { |v| v.respond_to?(:to_hash) ? v.to_hash : v }
                      else
                        value.respond_to?(:to_hash) ? value.to_hash : value
                      end
      end
      return hash
    end

    # Returns the string representation of the object
    # @return [String] string presentation of the object
    def to_s
      return to_hash.to_s
    end

    # Compares two instances by their attribute values.
    # @return [Boolean] true when both instances carry equal attributes
    def ==(other)
      return true if equal?(other)
      return false unless other.is_a?(self.class)
      to_hash == other.to_hash
    end

    def eql?(other)
      self == other
    end

  end

end
