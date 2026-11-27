=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Top10Filter.rb">
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

  # Represents the top 10 filter.
  class Top10Filter
    # An integer property named FieldIndex that can be accessed and modified.
    # @return [Integer]
    attr_accessor :field_index
    # @return [String]
    attr_accessor :criteria
    # Indicates whether the items is percent.
    # @return [BOOLEAN]
    attr_accessor :is_percent
    # Indicates whether it's top filter.
    # @return [BOOLEAN]
    attr_accessor :is_top
    # Gets and sets the items of the filter.
    # @return [Integer]
    attr_accessor :items

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'field_index' => :'FieldIndex',
        :'criteria' => :'Criteria',
        :'is_percent' => :'IsPercent',
        :'is_top' => :'IsTop',
        :'items' => :'Items',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'field_index' => :'Integer',
        :'criteria' => :'String',
        :'is_percent' => :'BOOLEAN',
        :'is_top' => :'BOOLEAN',
        :'items' => :'Integer',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.field_index = attributes[:field_index] if attributes.key?(:field_index)
      self.criteria = attributes[:criteria] if attributes.key?(:criteria)
      self.is_percent = attributes[:is_percent] if attributes.key?(:is_percent)
      self.is_top = attributes[:is_top] if attributes.key?(:is_top)
      self.items = attributes[:items] if attributes.key?(:items)
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
