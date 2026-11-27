=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="DataLabels.rb">
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
require_relative 'chart_frame'

module AsposeCellsCloud

  # Encapsulates a collection of all the DataLabel objects for the specified Series.
  class DataLabels < ChartFrame
    # Indicates the text is auto generated.
    # @return [BOOLEAN]
    attr_accessor :is_auto_text
    # A nullable boolean property "IsDeleted" indicating whether an object has been deleted.
    # @return [BOOLEAN]
    attr_accessor :is_deleted
    # @return [String]
    attr_accessor :linked_source
    # Gets and sets the built-in number format.
    # @return [Integer]
    attr_accessor :number
    # Represents the format string for the DataLabels object.
    # @return [String]
    attr_accessor :number_format
    # True if the number format is linked to the cells                          (so that the number format changes in the labels when it changes in the cells).
    # @return [BOOLEAN]
    attr_accessor :number_format_linked
    # Represents the position of the data label.
    # @return [String]
    attr_accessor :position
    # @return [Integer]
    attr_accessor :rotation_angle
    # Gets or sets the separator type used for the data labels on a chart.
    # @return [String]
    attr_accessor :separator
    # Represents a specified chart's data label percentage value display behavior. True displays the percentage value. False to hide.
    # @return [BOOLEAN]
    attr_accessor :show_bubble_size
    # Represents a specified chart's data label category name display behavior.True to display the category name for the data labels on a chart. False to hide.
    # @return [BOOLEAN]
    attr_accessor :show_category_name
    # Represents a specified chart's data label legend key display behavior.                         True if the data label legend key is visible.
    # @return [BOOLEAN]
    attr_accessor :show_legend_key
    # Represents a specified chart's data label percentage value display behavior. True displays the percentage value. False to hide.
    # @return [BOOLEAN]
    attr_accessor :show_percentage
    # Returns or sets a Boolean to indicate the series name display behavior for the data labels on a chart.                         True to show the series name. False to hide.
    # @return [BOOLEAN]
    attr_accessor :show_series_name
    # Represents a specified chart's data label values display behavior. True displays the values. False to hide.
    # @return [BOOLEAN]
    attr_accessor :show_value
    # Gets or sets the text of data label.
    # @return [String]
    attr_accessor :text
    # @return [String]
    attr_accessor :text_direction
    # @return [String]
    attr_accessor :text_horizontal_alignment
    # @return [String]
    attr_accessor :text_vertical_alignment
    # @return [Area]
    attr_accessor :area
    # @return [BOOLEAN]
    attr_accessor :auto_scale_font
    # @return [String]
    attr_accessor :background_mode
    # @return [Line]
    attr_accessor :border
    # @return [Font]
    attr_accessor :font
    # @return [BOOLEAN]
    attr_accessor :is_automatic_size
    # @return [BOOLEAN]
    attr_accessor :is_inner_mode
    # @return [BOOLEAN]
    attr_accessor :shadow
    # @return [Integer]
    attr_accessor :width
    # @return [Integer]
    attr_accessor :height
    # @return [Integer]
    attr_accessor :x
    # @return [Integer]
    attr_accessor :y

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_auto_text' => :'IsAutoText',
        :'is_deleted' => :'IsDeleted',
        :'linked_source' => :'LinkedSource',
        :'number' => :'Number',
        :'number_format' => :'NumberFormat',
        :'number_format_linked' => :'NumberFormatLinked',
        :'position' => :'Position',
        :'rotation_angle' => :'RotationAngle',
        :'separator' => :'Separator',
        :'show_bubble_size' => :'ShowBubbleSize',
        :'show_category_name' => :'ShowCategoryName',
        :'show_legend_key' => :'ShowLegendKey',
        :'show_percentage' => :'ShowPercentage',
        :'show_series_name' => :'ShowSeriesName',
        :'show_value' => :'ShowValue',
        :'text' => :'Text',
        :'text_direction' => :'TextDirection',
        :'text_horizontal_alignment' => :'TextHorizontalAlignment',
        :'text_vertical_alignment' => :'TextVerticalAlignment',
        :'area' => :'Area',
        :'auto_scale_font' => :'AutoScaleFont',
        :'background_mode' => :'BackgroundMode',
        :'border' => :'Border',
        :'font' => :'Font',
        :'is_automatic_size' => :'IsAutomaticSize',
        :'is_inner_mode' => :'IsInnerMode',
        :'shadow' => :'Shadow',
        :'width' => :'Width',
        :'height' => :'Height',
        :'x' => :'X',
        :'y' => :'Y',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'is_auto_text' => :'BOOLEAN',
        :'is_deleted' => :'BOOLEAN',
        :'linked_source' => :'String',
        :'number' => :'Integer',
        :'number_format' => :'String',
        :'number_format_linked' => :'BOOLEAN',
        :'position' => :'String',
        :'rotation_angle' => :'Integer',
        :'separator' => :'String',
        :'show_bubble_size' => :'BOOLEAN',
        :'show_category_name' => :'BOOLEAN',
        :'show_legend_key' => :'BOOLEAN',
        :'show_percentage' => :'BOOLEAN',
        :'show_series_name' => :'BOOLEAN',
        :'show_value' => :'BOOLEAN',
        :'text' => :'String',
        :'text_direction' => :'String',
        :'text_horizontal_alignment' => :'String',
        :'text_vertical_alignment' => :'String',
        :'area' => :'Area',
        :'auto_scale_font' => :'BOOLEAN',
        :'background_mode' => :'String',
        :'border' => :'Line',
        :'font' => :'Font',
        :'is_automatic_size' => :'BOOLEAN',
        :'is_inner_mode' => :'BOOLEAN',
        :'shadow' => :'BOOLEAN',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'x' => :'Integer',
        :'y' => :'Integer',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.is_auto_text = attributes[:is_auto_text] if attributes.key?(:is_auto_text)
      self.is_deleted = attributes[:is_deleted] if attributes.key?(:is_deleted)
      self.linked_source = attributes[:linked_source] if attributes.key?(:linked_source)
      self.number = attributes[:number] if attributes.key?(:number)
      self.number_format = attributes[:number_format] if attributes.key?(:number_format)
      self.number_format_linked = attributes[:number_format_linked] if attributes.key?(:number_format_linked)
      self.position = attributes[:position] if attributes.key?(:position)
      self.rotation_angle = attributes[:rotation_angle] if attributes.key?(:rotation_angle)
      self.separator = attributes[:separator] if attributes.key?(:separator)
      self.show_bubble_size = attributes[:show_bubble_size] if attributes.key?(:show_bubble_size)
      self.show_category_name = attributes[:show_category_name] if attributes.key?(:show_category_name)
      self.show_legend_key = attributes[:show_legend_key] if attributes.key?(:show_legend_key)
      self.show_percentage = attributes[:show_percentage] if attributes.key?(:show_percentage)
      self.show_series_name = attributes[:show_series_name] if attributes.key?(:show_series_name)
      self.show_value = attributes[:show_value] if attributes.key?(:show_value)
      self.text = attributes[:text] if attributes.key?(:text)
      self.text_direction = attributes[:text_direction] if attributes.key?(:text_direction)
      self.text_horizontal_alignment = attributes[:text_horizontal_alignment] if attributes.key?(:text_horizontal_alignment)
      self.text_vertical_alignment = attributes[:text_vertical_alignment] if attributes.key?(:text_vertical_alignment)
      self.area = attributes[:area] if attributes.key?(:area)
      self.auto_scale_font = attributes[:auto_scale_font] if attributes.key?(:auto_scale_font)
      self.background_mode = attributes[:background_mode] if attributes.key?(:background_mode)
      self.border = attributes[:border] if attributes.key?(:border)
      self.font = attributes[:font] if attributes.key?(:font)
      self.is_automatic_size = attributes[:is_automatic_size] if attributes.key?(:is_automatic_size)
      self.is_inner_mode = attributes[:is_inner_mode] if attributes.key?(:is_inner_mode)
      self.shadow = attributes[:shadow] if attributes.key?(:shadow)
      self.width = attributes[:width] if attributes.key?(:width)
      self.height = attributes[:height] if attributes.key?(:height)
      self.x = attributes[:x] if attributes.key?(:x)
      self.y = attributes[:y] if attributes.key?(:y)
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
