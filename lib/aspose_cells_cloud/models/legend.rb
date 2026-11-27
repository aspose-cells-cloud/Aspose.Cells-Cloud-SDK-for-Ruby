=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Legend.rb">
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

  # Encapsulates the object that represents the chart legend.
  class Legend < ChartFrame
    # Gets or sets the legend position type.
    # @return [String]
    attr_accessor :position
    # Gets a collection of all the LegendEntry objects in the specified chart legend.                         Setting the legend entries of the surface chart is not supported.                         So it will return null if the chart type is surface chart type.
    # @return [LinkElement]
    attr_accessor :legend_entries
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
        :'position' => :'Position',
        :'legend_entries' => :'LegendEntries',
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
        :'position' => :'String',
        :'legend_entries' => :'LinkElement',
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
      self.position = attributes[:position] if attributes.key?(:position)
      self.legend_entries = attributes[:legend_entries] if attributes.key?(:legend_entries)
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
