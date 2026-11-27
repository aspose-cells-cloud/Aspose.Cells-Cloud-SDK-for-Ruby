=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ColorFilter.rb">
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

  # Color filter.
  class ColorFilter
    # Whether filter by the cell's fill color.
    # @return [BOOLEAN]
    attr_accessor :filter_by_fill_color
    # A property "Pattern" of type string with a getter and setter is defined.
    # @return [String]
    attr_accessor :pattern
    # @return [CellsColor]
    attr_accessor :color
    # @return [CellsColor]
    attr_accessor :foreground_color_color
    # @return [CellsColor]
    attr_accessor :background_color

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'filter_by_fill_color' => :'FilterByFillColor',
        :'pattern' => :'Pattern',
        :'color' => :'Color',
        :'foreground_color_color' => :'ForegroundColorColor',
        :'background_color' => :'BackgroundColor',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'filter_by_fill_color' => :'BOOLEAN',
        :'pattern' => :'String',
        :'color' => :'CellsColor',
        :'foreground_color_color' => :'CellsColor',
        :'background_color' => :'CellsColor',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.filter_by_fill_color = attributes[:filter_by_fill_color] if attributes.key?(:filter_by_fill_color)
      self.pattern = attributes[:pattern] if attributes.key?(:pattern)
      self.color = attributes[:color] if attributes.key?(:color)
      self.foreground_color_color = attributes[:foreground_color_color] if attributes.key?(:foreground_color_color)
      self.background_color = attributes[:background_color] if attributes.key?(:background_color)
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
