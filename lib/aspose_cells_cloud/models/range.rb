=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Range.rb">
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

  class Range
    # @return [Integer]
    attr_accessor :column_count
    # @return [Float]
    attr_accessor :column_width
    # @return [Integer]
    attr_accessor :first_column
    # @return [Integer]
    attr_accessor :first_row
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :refers_to
    # @return [Integer]
    attr_accessor :row_count
    # @return [Float]
    attr_accessor :row_height
    # @return [String]
    attr_accessor :worksheet

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'column_count' => :'ColumnCount',
        :'column_width' => :'ColumnWidth',
        :'first_column' => :'FirstColumn',
        :'first_row' => :'FirstRow',
        :'name' => :'Name',
        :'refers_to' => :'RefersTo',
        :'row_count' => :'RowCount',
        :'row_height' => :'RowHeight',
        :'worksheet' => :'Worksheet',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'column_count' => :'Integer',
        :'column_width' => :'Float',
        :'first_column' => :'Integer',
        :'first_row' => :'Integer',
        :'name' => :'String',
        :'refers_to' => :'String',
        :'row_count' => :'Integer',
        :'row_height' => :'Float',
        :'worksheet' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.column_count = attributes[:column_count] if attributes.key?(:column_count)
      self.column_width = attributes[:column_width] if attributes.key?(:column_width)
      self.first_column = attributes[:first_column] if attributes.key?(:first_column)
      self.first_row = attributes[:first_row] if attributes.key?(:first_row)
      self.name = attributes[:name] if attributes.key?(:name)
      self.refers_to = attributes[:refers_to] if attributes.key?(:refers_to)
      self.row_count = attributes[:row_count] if attributes.key?(:row_count)
      self.row_height = attributes[:row_height] if attributes.key?(:row_height)
      self.worksheet = attributes[:worksheet] if attributes.key?(:worksheet)
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
