=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ChartDataTable.rb">
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
require_relative 'link_element'

module AsposeCellsCloud

  # Represents a chart data table.
  class ChartDataTable < LinkElement
    # True if the text in the object changes font size when the object size changes.                          The default value is True.
    # @return [BOOLEAN]
    attr_accessor :auto_scale_font
    # Gets and sets the display mode of the background
    # @return [String]
    attr_accessor :background_mode
    # Returns a Border object that represents the border of the object
    # @return [Line]
    attr_accessor :border
    # Gets a  object which represents the font setting of the specified chart data table.
    # @return [Font]
    attr_accessor :font
    # True if the chart data table has horizontal cell borders
    # @return [BOOLEAN]
    attr_accessor :has_border_horizontal
    # True if the chart data table has outline borders
    # @return [BOOLEAN]
    attr_accessor :has_border_outline
    # True if the chart data table has vertical cell borders
    # @return [BOOLEAN]
    attr_accessor :has_border_vertical
    # True if the data label legend key is visible.
    # @return [BOOLEAN]
    attr_accessor :show_legend_key
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_scale_font' => :'AutoScaleFont',
        :'background_mode' => :'BackgroundMode',
        :'border' => :'Border',
        :'font' => :'Font',
        :'has_border_horizontal' => :'HasBorderHorizontal',
        :'has_border_outline' => :'HasBorderOutline',
        :'has_border_vertical' => :'HasBorderVertical',
        :'show_legend_key' => :'ShowLegendKey',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_scale_font' => :'BOOLEAN',
        :'background_mode' => :'String',
        :'border' => :'Line',
        :'font' => :'Font',
        :'has_border_horizontal' => :'BOOLEAN',
        :'has_border_outline' => :'BOOLEAN',
        :'has_border_vertical' => :'BOOLEAN',
        :'show_legend_key' => :'BOOLEAN',
        :'link' => :'Link',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.auto_scale_font = attributes[:auto_scale_font] if attributes.key?(:auto_scale_font)
      self.background_mode = attributes[:background_mode] if attributes.key?(:background_mode)
      self.border = attributes[:border] if attributes.key?(:border)
      self.font = attributes[:font] if attributes.key?(:font)
      self.has_border_horizontal = attributes[:has_border_horizontal] if attributes.key?(:has_border_horizontal)
      self.has_border_outline = attributes[:has_border_outline] if attributes.key?(:has_border_outline)
      self.has_border_vertical = attributes[:has_border_vertical] if attributes.key?(:has_border_vertical)
      self.show_legend_key = attributes[:show_legend_key] if attributes.key?(:show_legend_key)
      self.link = attributes[:link] if attributes.key?(:link)
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
