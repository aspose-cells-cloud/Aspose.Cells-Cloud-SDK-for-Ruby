=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="XpsSaveOptions.rb">
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
require_relative 'paginated_save_options'

module AsposeCellsCloud

  class XpsSaveOptions < PaginatedSaveOptions
    # @return [String]
    attr_accessor :default_font
    # @return [BOOLEAN]
    attr_accessor :check_workbook_default_font
    # @return [BOOLEAN]
    attr_accessor :check_font_compatibility
    # @return [BOOLEAN]
    attr_accessor :is_font_substitution_char_granularity
    # @return [BOOLEAN]
    attr_accessor :one_page_per_sheet
    # @return [BOOLEAN]
    attr_accessor :all_columns_in_one_page_per_sheet
    # @return [BOOLEAN]
    attr_accessor :ignore_error
    # @return [BOOLEAN]
    attr_accessor :output_blank_page_when_nothing_to_print
    # @return [Integer]
    attr_accessor :page_index
    # @return [Integer]
    attr_accessor :page_count
    # @return [String]
    attr_accessor :printing_page_type
    # @return [String]
    attr_accessor :gridline_type
    # @return [String]
    attr_accessor :text_cross_type
    # @return [String]
    attr_accessor :default_edit_language
    # @return [String]
    attr_accessor :emf_render_setting
    # @return [BOOLEAN]
    attr_accessor :merge_areas
    # @return [BOOLEAN]
    attr_accessor :sort_external_names
    # @return [BOOLEAN]
    attr_accessor :update_smart_art
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
    attr_accessor :check_excel_restriction
    # @return [BOOLEAN]
    attr_accessor :encrypt_document_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'default_font' => :'DefaultFont',
        :'check_workbook_default_font' => :'CheckWorkbookDefaultFont',
        :'check_font_compatibility' => :'CheckFontCompatibility',
        :'is_font_substitution_char_granularity' => :'IsFontSubstitutionCharGranularity',
        :'one_page_per_sheet' => :'OnePagePerSheet',
        :'all_columns_in_one_page_per_sheet' => :'AllColumnsInOnePagePerSheet',
        :'ignore_error' => :'IgnoreError',
        :'output_blank_page_when_nothing_to_print' => :'OutputBlankPageWhenNothingToPrint',
        :'page_index' => :'PageIndex',
        :'page_count' => :'PageCount',
        :'printing_page_type' => :'PrintingPageType',
        :'gridline_type' => :'GridlineType',
        :'text_cross_type' => :'TextCrossType',
        :'default_edit_language' => :'DefaultEditLanguage',
        :'emf_render_setting' => :'EmfRenderSetting',
        :'merge_areas' => :'MergeAreas',
        :'sort_external_names' => :'SortExternalNames',
        :'update_smart_art' => :'UpdateSmartArt',
        :'save_format' => :'SaveFormat',
        :'cached_file_folder' => :'CachedFileFolder',
        :'clear_data' => :'ClearData',
        :'create_directory' => :'CreateDirectory',
        :'enable_http_compression' => :'EnableHTTPCompression',
        :'refresh_chart_cache' => :'RefreshChartCache',
        :'sort_names' => :'SortNames',
        :'validate_merged_areas' => :'ValidateMergedAreas',
        :'check_excel_restriction' => :'CheckExcelRestriction',
        :'encrypt_document_properties' => :'EncryptDocumentProperties',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'default_font' => :'String',
        :'check_workbook_default_font' => :'BOOLEAN',
        :'check_font_compatibility' => :'BOOLEAN',
        :'is_font_substitution_char_granularity' => :'BOOLEAN',
        :'one_page_per_sheet' => :'BOOLEAN',
        :'all_columns_in_one_page_per_sheet' => :'BOOLEAN',
        :'ignore_error' => :'BOOLEAN',
        :'output_blank_page_when_nothing_to_print' => :'BOOLEAN',
        :'page_index' => :'Integer',
        :'page_count' => :'Integer',
        :'printing_page_type' => :'String',
        :'gridline_type' => :'String',
        :'text_cross_type' => :'String',
        :'default_edit_language' => :'String',
        :'emf_render_setting' => :'String',
        :'merge_areas' => :'BOOLEAN',
        :'sort_external_names' => :'BOOLEAN',
        :'update_smart_art' => :'BOOLEAN',
        :'save_format' => :'String',
        :'cached_file_folder' => :'String',
        :'clear_data' => :'BOOLEAN',
        :'create_directory' => :'BOOLEAN',
        :'enable_http_compression' => :'BOOLEAN',
        :'refresh_chart_cache' => :'BOOLEAN',
        :'sort_names' => :'BOOLEAN',
        :'validate_merged_areas' => :'BOOLEAN',
        :'check_excel_restriction' => :'BOOLEAN',
        :'encrypt_document_properties' => :'BOOLEAN',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.default_font = attributes[:default_font] if attributes.key?(:default_font)
      self.check_workbook_default_font = attributes[:check_workbook_default_font] if attributes.key?(:check_workbook_default_font)
      self.check_font_compatibility = attributes[:check_font_compatibility] if attributes.key?(:check_font_compatibility)
      self.is_font_substitution_char_granularity = attributes[:is_font_substitution_char_granularity] if attributes.key?(:is_font_substitution_char_granularity)
      self.one_page_per_sheet = attributes[:one_page_per_sheet] if attributes.key?(:one_page_per_sheet)
      self.all_columns_in_one_page_per_sheet = attributes[:all_columns_in_one_page_per_sheet] if attributes.key?(:all_columns_in_one_page_per_sheet)
      self.ignore_error = attributes[:ignore_error] if attributes.key?(:ignore_error)
      self.output_blank_page_when_nothing_to_print = attributes[:output_blank_page_when_nothing_to_print] if attributes.key?(:output_blank_page_when_nothing_to_print)
      self.page_index = attributes[:page_index] if attributes.key?(:page_index)
      self.page_count = attributes[:page_count] if attributes.key?(:page_count)
      self.printing_page_type = attributes[:printing_page_type] if attributes.key?(:printing_page_type)
      self.gridline_type = attributes[:gridline_type] if attributes.key?(:gridline_type)
      self.text_cross_type = attributes[:text_cross_type] if attributes.key?(:text_cross_type)
      self.default_edit_language = attributes[:default_edit_language] if attributes.key?(:default_edit_language)
      self.emf_render_setting = attributes[:emf_render_setting] if attributes.key?(:emf_render_setting)
      self.merge_areas = attributes[:merge_areas] if attributes.key?(:merge_areas)
      self.sort_external_names = attributes[:sort_external_names] if attributes.key?(:sort_external_names)
      self.update_smart_art = attributes[:update_smart_art] if attributes.key?(:update_smart_art)
      self.save_format = attributes[:save_format] if attributes.key?(:save_format)
      self.cached_file_folder = attributes[:cached_file_folder] if attributes.key?(:cached_file_folder)
      self.clear_data = attributes[:clear_data] if attributes.key?(:clear_data)
      self.create_directory = attributes[:create_directory] if attributes.key?(:create_directory)
      self.enable_http_compression = attributes[:enable_http_compression] if attributes.key?(:enable_http_compression)
      self.refresh_chart_cache = attributes[:refresh_chart_cache] if attributes.key?(:refresh_chart_cache)
      self.sort_names = attributes[:sort_names] if attributes.key?(:sort_names)
      self.validate_merged_areas = attributes[:validate_merged_areas] if attributes.key?(:validate_merged_areas)
      self.check_excel_restriction = attributes[:check_excel_restriction] if attributes.key?(:check_excel_restriction)
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
