=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="CreatePivotTableRequest.rb">
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

  # Indicates create pivot table request
  class CreatePivotTableRequest
    # Pivot table name
    # @return [String]
    attr_accessor :name
    # The data for the new PivotTable cache.
    # @return [String]
    attr_accessor :source_data
    # The cell in the upper-left corner of the PivotTable report's destination range.
    # @return [String]
    attr_accessor :dest_cell_name
    # Indicates whether using same data source when another existing pivot table has used this data source.If the property is true, it will save memory.
    # @return [BOOLEAN]
    attr_accessor :use_same_source
    # Represents row fields in a PivotTable report.
    # @return [Array<Integer>]
    attr_accessor :pivot_field_rows
    # Represents column fields in a PivotTable report.
    # @return [Array<Integer>]
    attr_accessor :pivot_field_columns
    # Represents data fields in a PivotTable report.
    # @return [Array<Integer>]
    attr_accessor :pivot_field_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'source_data' => :'SourceData',
        :'dest_cell_name' => :'DestCellName',
        :'use_same_source' => :'UseSameSource',
        :'pivot_field_rows' => :'PivotFieldRows',
        :'pivot_field_columns' => :'PivotFieldColumns',
        :'pivot_field_data' => :'PivotFieldData',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'source_data' => :'String',
        :'dest_cell_name' => :'String',
        :'use_same_source' => :'BOOLEAN',
        :'pivot_field_rows' => :'Array<Integer>',
        :'pivot_field_columns' => :'Array<Integer>',
        :'pivot_field_data' => :'Array<Integer>',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.name = attributes[:name] if attributes.key?(:name)
      self.source_data = attributes[:source_data] if attributes.key?(:source_data)
      self.dest_cell_name = attributes[:dest_cell_name] if attributes.key?(:dest_cell_name)
      self.use_same_source = attributes[:use_same_source] if attributes.key?(:use_same_source)
      self.pivot_field_rows = attributes[:pivot_field_rows] if attributes.key?(:pivot_field_rows)
      self.pivot_field_columns = attributes[:pivot_field_columns] if attributes.key?(:pivot_field_columns)
      self.pivot_field_data = attributes[:pivot_field_data] if attributes.key?(:pivot_field_data)
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
