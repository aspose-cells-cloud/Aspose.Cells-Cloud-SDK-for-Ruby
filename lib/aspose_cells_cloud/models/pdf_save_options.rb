=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PdfSaveOptions.rb">
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

  class PdfSaveOptions < SaveOptions
    # @return [BOOLEAN]
    attr_accessor :display_doc_title
    # @return [BOOLEAN]
    attr_accessor :export_document_structure
    # @return [String]
    attr_accessor :emf_render_setting
    # @return [String]
    attr_accessor :custom_properties_export
    # @return [String]
    attr_accessor :optimization_type
    # @return [String]
    attr_accessor :producer
    # @return [String]
    attr_accessor :pdf_compression
    # @return [String]
    attr_accessor :font_encoding
    # @return [RenderingWatermark]
    attr_accessor :watermark
    # @return [BOOLEAN]
    attr_accessor :calculate_formula
    # @return [BOOLEAN]
    attr_accessor :check_font_compatibility
    # @return [String]
    attr_accessor :compliance
    # @return [String]
    attr_accessor :default_font
    # @return [BOOLEAN]
    attr_accessor :one_page_per_sheet
    # @return [String]
    attr_accessor :printing_page_type
    # @return [PdfSecurityOptions]
    attr_accessor :security_options
    # @return [Integer]
    attr_accessor :desired_ppi
    # @return [Integer]
    attr_accessor :jpeg_quality
    # @return [String]
    attr_accessor :image_type
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
        :'display_doc_title' => :'DisplayDocTitle',
        :'export_document_structure' => :'ExportDocumentStructure',
        :'emf_render_setting' => :'EmfRenderSetting',
        :'custom_properties_export' => :'CustomPropertiesExport',
        :'optimization_type' => :'OptimizationType',
        :'producer' => :'Producer',
        :'pdf_compression' => :'PdfCompression',
        :'font_encoding' => :'FontEncoding',
        :'watermark' => :'Watermark',
        :'calculate_formula' => :'CalculateFormula',
        :'check_font_compatibility' => :'CheckFontCompatibility',
        :'compliance' => :'Compliance',
        :'default_font' => :'DefaultFont',
        :'one_page_per_sheet' => :'OnePagePerSheet',
        :'printing_page_type' => :'PrintingPageType',
        :'security_options' => :'SecurityOptions',
        :'desired_ppi' => :'desiredPPI',
        :'jpeg_quality' => :'jpegQuality',
        :'image_type' => :'ImageType',
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
        :'display_doc_title' => :'BOOLEAN',
        :'export_document_structure' => :'BOOLEAN',
        :'emf_render_setting' => :'String',
        :'custom_properties_export' => :'String',
        :'optimization_type' => :'String',
        :'producer' => :'String',
        :'pdf_compression' => :'String',
        :'font_encoding' => :'String',
        :'watermark' => :'RenderingWatermark',
        :'calculate_formula' => :'BOOLEAN',
        :'check_font_compatibility' => :'BOOLEAN',
        :'compliance' => :'String',
        :'default_font' => :'String',
        :'one_page_per_sheet' => :'BOOLEAN',
        :'printing_page_type' => :'String',
        :'security_options' => :'PdfSecurityOptions',
        :'desired_ppi' => :'Integer',
        :'jpeg_quality' => :'Integer',
        :'image_type' => :'String',
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
      self.display_doc_title = attributes[:display_doc_title] if attributes.key?(:display_doc_title)
      self.export_document_structure = attributes[:export_document_structure] if attributes.key?(:export_document_structure)
      self.emf_render_setting = attributes[:emf_render_setting] if attributes.key?(:emf_render_setting)
      self.custom_properties_export = attributes[:custom_properties_export] if attributes.key?(:custom_properties_export)
      self.optimization_type = attributes[:optimization_type] if attributes.key?(:optimization_type)
      self.producer = attributes[:producer] if attributes.key?(:producer)
      self.pdf_compression = attributes[:pdf_compression] if attributes.key?(:pdf_compression)
      self.font_encoding = attributes[:font_encoding] if attributes.key?(:font_encoding)
      self.watermark = attributes[:watermark] if attributes.key?(:watermark)
      self.calculate_formula = attributes[:calculate_formula] if attributes.key?(:calculate_formula)
      self.check_font_compatibility = attributes[:check_font_compatibility] if attributes.key?(:check_font_compatibility)
      self.compliance = attributes[:compliance] if attributes.key?(:compliance)
      self.default_font = attributes[:default_font] if attributes.key?(:default_font)
      self.one_page_per_sheet = attributes[:one_page_per_sheet] if attributes.key?(:one_page_per_sheet)
      self.printing_page_type = attributes[:printing_page_type] if attributes.key?(:printing_page_type)
      self.security_options = attributes[:security_options] if attributes.key?(:security_options)
      self.desired_ppi = attributes[:desired_ppi] if attributes.key?(:desired_ppi)
      self.jpeg_quality = attributes[:jpeg_quality] if attributes.key?(:jpeg_quality)
      self.image_type = attributes[:image_type] if attributes.key?(:image_type)
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
