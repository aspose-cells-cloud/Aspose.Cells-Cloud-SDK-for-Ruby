=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PivotTableOperateParameter.rb">
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
require_relative 'operate_parameter'

module AsposeCellsCloud

  # Represents pivot table operate parameter.
  class PivotTableOperateParameter < OperateParameter
    # Represents source data of pivot table.
    # @return [String]
    attr_accessor :source_data
    # Represents start cell name of the pivot table.
    # @return [String]
    attr_accessor :dest_cell_name
    # Represents table name of pivot table.
    # @return [String]
    attr_accessor :table_name
    # Represents whether the same source is used.
    # @return [BOOLEAN]
    attr_accessor :use_same_source
    # Represents pivot table index.
    # @return [Integer]
    attr_accessor :pivot_table_index
    # Represents pivot row fields.
    # @return [Array<Integer>]
    attr_accessor :pivot_field_rows
    # Represents pivot column fields.
    # @return [Array<Integer>]
    attr_accessor :pivot_field_columns
    # Represents pivot data field.
    # @return [Array<Integer>]
    attr_accessor :pivot_field_data
    # @return [String]
    attr_accessor :operate_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'source_data' => :'SourceData',
        :'dest_cell_name' => :'DestCellName',
        :'table_name' => :'TableName',
        :'use_same_source' => :'UseSameSource',
        :'pivot_table_index' => :'PivotTableIndex',
        :'pivot_field_rows' => :'PivotFieldRows',
        :'pivot_field_columns' => :'PivotFieldColumns',
        :'pivot_field_data' => :'PivotFieldData',
        :'operate_type' => :'OperateType',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'source_data' => :'String',
        :'dest_cell_name' => :'String',
        :'table_name' => :'String',
        :'use_same_source' => :'BOOLEAN',
        :'pivot_table_index' => :'Integer',
        :'pivot_field_rows' => :'Array<Integer>',
        :'pivot_field_columns' => :'Array<Integer>',
        :'pivot_field_data' => :'Array<Integer>',
        :'operate_type' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.source_data = attributes[:source_data] if attributes.key?(:source_data)
      self.dest_cell_name = attributes[:dest_cell_name] if attributes.key?(:dest_cell_name)
      self.table_name = attributes[:table_name] if attributes.key?(:table_name)
      self.use_same_source = attributes[:use_same_source] if attributes.key?(:use_same_source)
      self.pivot_table_index = attributes[:pivot_table_index] if attributes.key?(:pivot_table_index)
      self.pivot_field_rows = attributes[:pivot_field_rows] if attributes.key?(:pivot_field_rows)
      self.pivot_field_columns = attributes[:pivot_field_columns] if attributes.key?(:pivot_field_columns)
      self.pivot_field_data = attributes[:pivot_field_data] if attributes.key?(:pivot_field_data)
      self.operate_type = attributes[:operate_type] if attributes.key?(:operate_type)
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
