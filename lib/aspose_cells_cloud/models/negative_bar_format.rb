=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="NegativeBarFormat.rb">
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

  # Represents the color settings of the data bars for negative values that are    defined by a data bar conditional formating rule.
  class NegativeBarFormat
    # Gets or sets a FormatColor object that you can use to specify the border color for negative data bars.
    # @return [Color]
    attr_accessor :border_color
    # Gets whether to use the same border color as positive data bars.
    # @return [String]
    attr_accessor :border_color_type
    # Gets or sets a FormatColor object that you can use to specify the fill color for negative data bars.
    # @return [Color]
    attr_accessor :color
    # Gets or sets whether to use the same fill color as positive data bars.
    # @return [String]
    attr_accessor :color_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'border_color' => :'BorderColor',
        :'border_color_type' => :'BorderColorType',
        :'color' => :'Color',
        :'color_type' => :'ColorType',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'border_color' => :'Color',
        :'border_color_type' => :'String',
        :'color' => :'Color',
        :'color_type' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.border_color = attributes[:border_color] if attributes.key?(:border_color)
      self.border_color_type = attributes[:border_color_type] if attributes.key?(:border_color_type)
      self.color = attributes[:color] if attributes.key?(:color)
      self.color_type = attributes[:color_type] if attributes.key?(:color_type)
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
