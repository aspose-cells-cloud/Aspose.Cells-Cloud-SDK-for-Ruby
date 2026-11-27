=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="CellsColor.rb">
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

  # Represents all types of color.
  class CellsColor
    # Gets and sets the RGB color.
    # @return [Color]
    attr_accessor :color
    # Gets and sets the color index in the color palette. Only applies of indexed color.
    # @return [Integer]
    attr_accessor :color_index
    # Gets and set the color which should apply to cell or shape.
    # @return [BOOLEAN]
    attr_accessor :is_shape_color
    # Set the tint of the shape color
    # @return [Float]
    attr_accessor :tint
    # Gets and sets the color from a 32-bit ARGB value.
    # @return [Integer]
    attr_accessor :argb
    # Gets the theme color. Only applies for theme color type.
    # @return [ThemeColor]
    attr_accessor :theme_color
    # The color type.
    # @return [String]
    attr_accessor :type
    # Gets and sets transparency as a value from 0.0 (opaque) through 1.0 (clear).
    # @return [Float]
    attr_accessor :transparency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'color' => :'Color',
        :'color_index' => :'ColorIndex',
        :'is_shape_color' => :'IsShapeColor',
        :'tint' => :'tint',
        :'argb' => :'Argb',
        :'theme_color' => :'ThemeColor',
        :'type' => :'Type',
        :'transparency' => :'Transparency',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'color' => :'Color',
        :'color_index' => :'Integer',
        :'is_shape_color' => :'BOOLEAN',
        :'tint' => :'Float',
        :'argb' => :'Integer',
        :'theme_color' => :'ThemeColor',
        :'type' => :'String',
        :'transparency' => :'Float',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.color = attributes[:color] if attributes.key?(:color)
      self.color_index = attributes[:color_index] if attributes.key?(:color_index)
      self.is_shape_color = attributes[:is_shape_color] if attributes.key?(:is_shape_color)
      self.tint = attributes[:tint] if attributes.key?(:tint)
      self.argb = attributes[:argb] if attributes.key?(:argb)
      self.theme_color = attributes[:theme_color] if attributes.key?(:theme_color)
      self.type = attributes[:type] if attributes.key?(:type)
      self.transparency = attributes[:transparency] if attributes.key?(:transparency)
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
