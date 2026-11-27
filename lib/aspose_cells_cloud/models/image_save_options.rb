=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ImageSaveOptions.rb">
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

  class ImageSaveOptions < SaveOptions
    # @return [String]
    attr_accessor :chart_image_type
    # @return [String]
    attr_accessor :embeded_image_name_in_svg
    # @return [Integer]
    attr_accessor :horizontal_resolution
    # @return [String]
    attr_accessor :image_format
    # @return [BOOLEAN]
    attr_accessor :is_cell_auto_fit
    # @return [BOOLEAN]
    attr_accessor :one_page_per_sheet
    # @return [BOOLEAN]
    attr_accessor :only_area
    # @return [String]
    attr_accessor :printing_page
    # @return [BOOLEAN]
    attr_accessor :print_with_status_dialog
    # @return [Integer]
    attr_accessor :quality
    # @return [String]
    attr_accessor :tiff_compression
    # @return [Integer]
    attr_accessor :vertical_resolution
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
        :'chart_image_type' => :'ChartImageType',
        :'embeded_image_name_in_svg' => :'EmbededImageNameInSvg',
        :'horizontal_resolution' => :'HorizontalResolution',
        :'image_format' => :'ImageFormat',
        :'is_cell_auto_fit' => :'IsCellAutoFit',
        :'one_page_per_sheet' => :'OnePagePerSheet',
        :'only_area' => :'OnlyArea',
        :'printing_page' => :'PrintingPage',
        :'print_with_status_dialog' => :'PrintWithStatusDialog',
        :'quality' => :'Quality',
        :'tiff_compression' => :'TiffCompression',
        :'vertical_resolution' => :'VerticalResolution',
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
        :'chart_image_type' => :'String',
        :'embeded_image_name_in_svg' => :'String',
        :'horizontal_resolution' => :'Integer',
        :'image_format' => :'String',
        :'is_cell_auto_fit' => :'BOOLEAN',
        :'one_page_per_sheet' => :'BOOLEAN',
        :'only_area' => :'BOOLEAN',
        :'printing_page' => :'String',
        :'print_with_status_dialog' => :'BOOLEAN',
        :'quality' => :'Integer',
        :'tiff_compression' => :'String',
        :'vertical_resolution' => :'Integer',
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
      self.chart_image_type = attributes[:chart_image_type] if attributes.key?(:chart_image_type)
      self.embeded_image_name_in_svg = attributes[:embeded_image_name_in_svg] if attributes.key?(:embeded_image_name_in_svg)
      self.horizontal_resolution = attributes[:horizontal_resolution] if attributes.key?(:horizontal_resolution)
      self.image_format = attributes[:image_format] if attributes.key?(:image_format)
      self.is_cell_auto_fit = attributes[:is_cell_auto_fit] if attributes.key?(:is_cell_auto_fit)
      self.one_page_per_sheet = attributes[:one_page_per_sheet] if attributes.key?(:one_page_per_sheet)
      self.only_area = attributes[:only_area] if attributes.key?(:only_area)
      self.printing_page = attributes[:printing_page] if attributes.key?(:printing_page)
      self.print_with_status_dialog = attributes[:print_with_status_dialog] if attributes.key?(:print_with_status_dialog)
      self.quality = attributes[:quality] if attributes.key?(:quality)
      self.tiff_compression = attributes[:tiff_compression] if attributes.key?(:tiff_compression)
      self.vertical_resolution = attributes[:vertical_resolution] if attributes.key?(:vertical_resolution)
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
