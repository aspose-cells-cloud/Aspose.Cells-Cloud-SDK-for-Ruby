=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="DataBar.rb">
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

  # Describe the DataBar conditional formatting rule. This conditional formatting    rule displays a gradated data bar in the range of cells.
  class DataBar
    # Gets the color of the axis for cells with conditional formatting as data bars.
    # @return [Color]
    attr_accessor :axis_color
    # Gets or sets the position of the axis of the data bars specified by a conditional formatting rule.
    # @return [String]
    attr_accessor :axis_position
    # Gets an object that specifies the border of a data bar.
    # @return [DataBarBorder]
    attr_accessor :bar_border
    # Gets or sets how a data bar is filled with color.
    # @return [String]
    attr_accessor :bar_fill_type
    # Get or set this DataBar's Color.
    # @return [Color]
    attr_accessor :color
    # Gets or sets the direction the databar is displayed.
    # @return [String]
    attr_accessor :direction
    # Get or set this DataBar's max value object.             Cannot set null or CFValueObject with type FormatConditionValueType.Min to it.
    # @return [ConditionalFormattingValue]
    attr_accessor :max_cfvo
    # Represents the max length of data bar .
    # @return [Integer]
    attr_accessor :max_length
    # Get or set this DataBar's min value object.             Cannot set null or CFValueObject with type FormatConditionValueType.Max to it.
    # @return [ConditionalFormattingValue]
    attr_accessor :min_cfvo
    # Represents the min length of data bar .
    # @return [Integer]
    attr_accessor :min_length
    # Gets the NegativeBarFormat object associated with a data bar conditional formatting rule.
    # @return [NegativeBarFormat]
    attr_accessor :negative_bar_format
    # Get or set the flag indicating whether to show the values of the cells on which this data bar is applied.             Default value is true.
    # @return [BOOLEAN]
    attr_accessor :show_value

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'axis_color' => :'AxisColor',
        :'axis_position' => :'AxisPosition',
        :'bar_border' => :'BarBorder',
        :'bar_fill_type' => :'BarFillType',
        :'color' => :'Color',
        :'direction' => :'Direction',
        :'max_cfvo' => :'MaxCfvo',
        :'max_length' => :'MaxLength',
        :'min_cfvo' => :'MinCfvo',
        :'min_length' => :'MinLength',
        :'negative_bar_format' => :'NegativeBarFormat',
        :'show_value' => :'ShowValue',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'axis_color' => :'Color',
        :'axis_position' => :'String',
        :'bar_border' => :'DataBarBorder',
        :'bar_fill_type' => :'String',
        :'color' => :'Color',
        :'direction' => :'String',
        :'max_cfvo' => :'ConditionalFormattingValue',
        :'max_length' => :'Integer',
        :'min_cfvo' => :'ConditionalFormattingValue',
        :'min_length' => :'Integer',
        :'negative_bar_format' => :'NegativeBarFormat',
        :'show_value' => :'BOOLEAN',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.axis_color = attributes[:axis_color] if attributes.key?(:axis_color)
      self.axis_position = attributes[:axis_position] if attributes.key?(:axis_position)
      self.bar_border = attributes[:bar_border] if attributes.key?(:bar_border)
      self.bar_fill_type = attributes[:bar_fill_type] if attributes.key?(:bar_fill_type)
      self.color = attributes[:color] if attributes.key?(:color)
      self.direction = attributes[:direction] if attributes.key?(:direction)
      self.max_cfvo = attributes[:max_cfvo] if attributes.key?(:max_cfvo)
      self.max_length = attributes[:max_length] if attributes.key?(:max_length)
      self.min_cfvo = attributes[:min_cfvo] if attributes.key?(:min_cfvo)
      self.min_length = attributes[:min_length] if attributes.key?(:min_length)
      self.negative_bar_format = attributes[:negative_bar_format] if attributes.key?(:negative_bar_format)
      self.show_value = attributes[:show_value] if attributes.key?(:show_value)
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
