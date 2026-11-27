=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ImageOrPrintOptions.rb">
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

  class ImageOrPrintOptions
    # @return [String]
    attr_accessor :text_cross_type
    # @return [String]
    attr_accessor :gridline_type
    # @return [BOOLEAN]
    attr_accessor :output_blank_page_when_nothing_to_print
    # @return [BOOLEAN]
    attr_accessor :check_workbook_default_font
    # @return [String]
    attr_accessor :default_font
    # @return [BOOLEAN]
    attr_accessor :is_optimized
    # @return [Integer]
    attr_accessor :page_count
    # @return [Integer]
    attr_accessor :page_index
    # @return [BOOLEAN]
    attr_accessor :is_font_substitution_char_granularity
    # @return [BOOLEAN]
    attr_accessor :transparent
    # @return [BOOLEAN]
    attr_accessor :only_area
    # @return [BOOLEAN]
    attr_accessor :svg_fit_to_view_port
    # @return [String]
    attr_accessor :embeded_image_name_in_svg
    # @return [BOOLEAN]
    attr_accessor :all_columns_in_one_page_per_sheet
    # @return [BOOLEAN]
    attr_accessor :print_with_status_dialog
    # @return [Integer]
    attr_accessor :horizontal_resolution
    # @return [Integer]
    attr_accessor :vertical_resolution
    # @return [String]
    attr_accessor :default_edit_language
    # @return [String]
    attr_accessor :tiff_color_depth
    # @return [String]
    attr_accessor :tiff_compression
    # @return [String]
    attr_accessor :printing_page
    # @return [Integer]
    attr_accessor :quality
    # @return [String]
    attr_accessor :image_type
    # @return [BOOLEAN]
    attr_accessor :one_page_per_sheet
    # @return [String]
    attr_accessor :tiff_binarization_method

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'text_cross_type' => :'TextCrossType',
        :'gridline_type' => :'GridlineType',
        :'output_blank_page_when_nothing_to_print' => :'OutputBlankPageWhenNothingToPrint',
        :'check_workbook_default_font' => :'CheckWorkbookDefaultFont',
        :'default_font' => :'DefaultFont',
        :'is_optimized' => :'IsOptimized',
        :'page_count' => :'PageCount',
        :'page_index' => :'PageIndex',
        :'is_font_substitution_char_granularity' => :'IsFontSubstitutionCharGranularity',
        :'transparent' => :'Transparent',
        :'only_area' => :'OnlyArea',
        :'svg_fit_to_view_port' => :'SVGFitToViewPort',
        :'embeded_image_name_in_svg' => :'EmbededImageNameInSvg',
        :'all_columns_in_one_page_per_sheet' => :'AllColumnsInOnePagePerSheet',
        :'print_with_status_dialog' => :'PrintWithStatusDialog',
        :'horizontal_resolution' => :'HorizontalResolution',
        :'vertical_resolution' => :'VerticalResolution',
        :'default_edit_language' => :'DefaultEditLanguage',
        :'tiff_color_depth' => :'TiffColorDepth',
        :'tiff_compression' => :'TiffCompression',
        :'printing_page' => :'PrintingPage',
        :'quality' => :'Quality',
        :'image_type' => :'ImageType',
        :'one_page_per_sheet' => :'OnePagePerSheet',
        :'tiff_binarization_method' => :'TiffBinarizationMethod',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'text_cross_type' => :'String',
        :'gridline_type' => :'String',
        :'output_blank_page_when_nothing_to_print' => :'BOOLEAN',
        :'check_workbook_default_font' => :'BOOLEAN',
        :'default_font' => :'String',
        :'is_optimized' => :'BOOLEAN',
        :'page_count' => :'Integer',
        :'page_index' => :'Integer',
        :'is_font_substitution_char_granularity' => :'BOOLEAN',
        :'transparent' => :'BOOLEAN',
        :'only_area' => :'BOOLEAN',
        :'svg_fit_to_view_port' => :'BOOLEAN',
        :'embeded_image_name_in_svg' => :'String',
        :'all_columns_in_one_page_per_sheet' => :'BOOLEAN',
        :'print_with_status_dialog' => :'BOOLEAN',
        :'horizontal_resolution' => :'Integer',
        :'vertical_resolution' => :'Integer',
        :'default_edit_language' => :'String',
        :'tiff_color_depth' => :'String',
        :'tiff_compression' => :'String',
        :'printing_page' => :'String',
        :'quality' => :'Integer',
        :'image_type' => :'String',
        :'one_page_per_sheet' => :'BOOLEAN',
        :'tiff_binarization_method' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.text_cross_type = attributes[:text_cross_type] if attributes.key?(:text_cross_type)
      self.gridline_type = attributes[:gridline_type] if attributes.key?(:gridline_type)
      self.output_blank_page_when_nothing_to_print = attributes[:output_blank_page_when_nothing_to_print] if attributes.key?(:output_blank_page_when_nothing_to_print)
      self.check_workbook_default_font = attributes[:check_workbook_default_font] if attributes.key?(:check_workbook_default_font)
      self.default_font = attributes[:default_font] if attributes.key?(:default_font)
      self.is_optimized = attributes[:is_optimized] if attributes.key?(:is_optimized)
      self.page_count = attributes[:page_count] if attributes.key?(:page_count)
      self.page_index = attributes[:page_index] if attributes.key?(:page_index)
      self.is_font_substitution_char_granularity = attributes[:is_font_substitution_char_granularity] if attributes.key?(:is_font_substitution_char_granularity)
      self.transparent = attributes[:transparent] if attributes.key?(:transparent)
      self.only_area = attributes[:only_area] if attributes.key?(:only_area)
      self.svg_fit_to_view_port = attributes[:svg_fit_to_view_port] if attributes.key?(:svg_fit_to_view_port)
      self.embeded_image_name_in_svg = attributes[:embeded_image_name_in_svg] if attributes.key?(:embeded_image_name_in_svg)
      self.all_columns_in_one_page_per_sheet = attributes[:all_columns_in_one_page_per_sheet] if attributes.key?(:all_columns_in_one_page_per_sheet)
      self.print_with_status_dialog = attributes[:print_with_status_dialog] if attributes.key?(:print_with_status_dialog)
      self.horizontal_resolution = attributes[:horizontal_resolution] if attributes.key?(:horizontal_resolution)
      self.vertical_resolution = attributes[:vertical_resolution] if attributes.key?(:vertical_resolution)
      self.default_edit_language = attributes[:default_edit_language] if attributes.key?(:default_edit_language)
      self.tiff_color_depth = attributes[:tiff_color_depth] if attributes.key?(:tiff_color_depth)
      self.tiff_compression = attributes[:tiff_compression] if attributes.key?(:tiff_compression)
      self.printing_page = attributes[:printing_page] if attributes.key?(:printing_page)
      self.quality = attributes[:quality] if attributes.key?(:quality)
      self.image_type = attributes[:image_type] if attributes.key?(:image_type)
      self.one_page_per_sheet = attributes[:one_page_per_sheet] if attributes.key?(:one_page_per_sheet)
      self.tiff_binarization_method = attributes[:tiff_binarization_method] if attributes.key?(:tiff_binarization_method)
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
