=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="DataSorterKey.rb">
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

  # Represents the key of the data sorter.
  class DataSorterKey
    # Indicates the order of sorting.
    # @return [String]
    attr_accessor :order
    # Gets the sorted column index(absolute position, column A is 0, B is 1, ...).
    # @return [Integer]
    attr_accessor :index
    # Represents the type of sorting.
    # @return [String]
    attr_accessor :type
    # Represents the icon set type.
    # @return [String]
    attr_accessor :icon_set_type
    # Represents the id of the icon set type.
    # @return [Integer]
    attr_accessor :icon_id
    # Gets the sorted color.
    # @return [Color]
    attr_accessor :color

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'order' => :'Order',
        :'index' => :'Index',
        :'type' => :'Type',
        :'icon_set_type' => :'IconSetType',
        :'icon_id' => :'IconId',
        :'color' => :'Color',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'order' => :'String',
        :'index' => :'Integer',
        :'type' => :'String',
        :'icon_set_type' => :'String',
        :'icon_id' => :'Integer',
        :'color' => :'Color',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.order = attributes[:order] if attributes.key?(:order)
      self.index = attributes[:index] if attributes.key?(:index)
      self.type = attributes[:type] if attributes.key?(:type)
      self.icon_set_type = attributes[:icon_set_type] if attributes.key?(:icon_set_type)
      self.icon_id = attributes[:icon_id] if attributes.key?(:icon_id)
      self.color = attributes[:color] if attributes.key?(:color)
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
