=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Cells.rb">
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

  # Encapsulates a collection of cell relevant objects, such as Aspose.Cells.Cell, Aspose.Cells.Row, ...etc.
  class Cells < LinkElement
    # Maximum row index of cell which contains data or style.
    # @return [Integer]
    attr_accessor :max_row
    # Maximum column index of those cells that have been instantiated in the collection(does not include the column                         where style is defined for the whole column but no cell has been instantiated in it).
    # @return [Integer]
    attr_accessor :max_column
    # The class has a public property "CellCount" of type integer that can be read and modified.
    # @return [Integer]
    attr_accessor :cell_count
    # Gets the collection of  objects that represents the individual rows in this worksheet.
    # @return [LinkElement]
    attr_accessor :rows
    # Gets the collection of  objects that represents the individual columns in this worksheet.
    # @return [LinkElement]
    attr_accessor :columns
    # @return [Array<LinkElement>]
    attr_accessor :cell_list
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'max_row' => :'MaxRow',
        :'max_column' => :'MaxColumn',
        :'cell_count' => :'CellCount',
        :'rows' => :'Rows',
        :'columns' => :'Columns',
        :'cell_list' => :'CellList',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'max_row' => :'Integer',
        :'max_column' => :'Integer',
        :'cell_count' => :'Integer',
        :'rows' => :'LinkElement',
        :'columns' => :'LinkElement',
        :'cell_list' => :'Array<LinkElement>',
        :'link' => :'Link',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.max_row = attributes[:max_row] if attributes.key?(:max_row)
      self.max_column = attributes[:max_column] if attributes.key?(:max_column)
      self.cell_count = attributes[:cell_count] if attributes.key?(:cell_count)
      self.rows = attributes[:rows] if attributes.key?(:rows)
      self.columns = attributes[:columns] if attributes.key?(:columns)
      self.cell_list = attributes[:cell_list] if attributes.key?(:cell_list)
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
