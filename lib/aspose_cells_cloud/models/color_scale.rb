=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ColorScale.rb">
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

  # Describe the ColorScale conditional formatting rule. This conditional formatting    rule creates a gradated color scale on the cells.
  class ColorScale
    # Get or set this ColorScale's max value object.             Cannot set null or CFValueObject with type FormatConditionValueType.Min to it.
    # @return [ConditionalFormattingValue]
    attr_accessor :max_cfvo
    # Get or set the gradient color for the maximum value in the range.
    # @return [Color]
    attr_accessor :max_color
    # Get or set this ColorScale's mid value object.             Cannot set CFValueObject with type FormatConditionValueType.Max or FormatConditionValueType.Min to it.
    # @return [ConditionalFormattingValue]
    attr_accessor :mid_cfvo
    # Get or set the gradient color for the middle value in the range.
    # @return [Color]
    attr_accessor :mid_color
    # Get or set this ColorScale's min value object.             Cannot set null or CFValueObject with type FormatConditionValueType.Max to it.
    # @return [ConditionalFormattingValue]
    attr_accessor :min_cfvo
    # Get or set the gradient color for the minimum value in the range.
    # @return [Color]
    attr_accessor :min_color

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'max_cfvo' => :'MaxCfvo',
        :'max_color' => :'MaxColor',
        :'mid_cfvo' => :'MidCfvo',
        :'mid_color' => :'MidColor',
        :'min_cfvo' => :'MinCfvo',
        :'min_color' => :'MinColor',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'max_cfvo' => :'ConditionalFormattingValue',
        :'max_color' => :'Color',
        :'mid_cfvo' => :'ConditionalFormattingValue',
        :'mid_color' => :'Color',
        :'min_cfvo' => :'ConditionalFormattingValue',
        :'min_color' => :'Color',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.max_cfvo = attributes[:max_cfvo] if attributes.key?(:max_cfvo)
      self.max_color = attributes[:max_color] if attributes.key?(:max_color)
      self.mid_cfvo = attributes[:mid_cfvo] if attributes.key?(:mid_cfvo)
      self.mid_color = attributes[:mid_color] if attributes.key?(:mid_color)
      self.min_cfvo = attributes[:min_cfvo] if attributes.key?(:min_cfvo)
      self.min_color = attributes[:min_color] if attributes.key?(:min_color)
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
