=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="WorksheetDataStatistics.rb">
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

  # Represents worksheet data statistics.
  class WorksheetDataStatistics
    # Represents worksheet name.
    # @return [String]
    attr_accessor :name
    # Represents chart number.
    # @return [Integer]
    attr_accessor :charts_count
    # Represents list object number.
    # @return [Integer]
    attr_accessor :tables_count
    # Represents pivot table number.
    # @return [Integer]
    attr_accessor :pivot_tables_count
    # Represents shape number.
    # @return [Integer]
    attr_accessor :shapes_count
    # Represents shape number.
    # @return [Integer]
    attr_accessor :hyperlinks_count
    # Represents hyperlink number.
    # @return [Integer]
    attr_accessor :query_tables_count
    # Represents query table number.
    # @return [Integer]
    attr_accessor :cells_count
    # Represents cell number.
    # @return [Integer]
    attr_accessor :cells_count_in_table
    # Represents formula number.
    # @return [Integer]
    attr_accessor :cells_count_is_formula

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'charts_count' => :'ChartsCount',
        :'tables_count' => :'TablesCount',
        :'pivot_tables_count' => :'PivotTablesCount',
        :'shapes_count' => :'ShapesCount',
        :'hyperlinks_count' => :'HyperlinksCount',
        :'query_tables_count' => :'QueryTablesCount',
        :'cells_count' => :'CellsCount',
        :'cells_count_in_table' => :'CellsCountInTable',
        :'cells_count_is_formula' => :'CellsCountIsFormula',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'charts_count' => :'Integer',
        :'tables_count' => :'Integer',
        :'pivot_tables_count' => :'Integer',
        :'shapes_count' => :'Integer',
        :'hyperlinks_count' => :'Integer',
        :'query_tables_count' => :'Integer',
        :'cells_count' => :'Integer',
        :'cells_count_in_table' => :'Integer',
        :'cells_count_is_formula' => :'Integer',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.name = attributes[:name] if attributes.key?(:name)
      self.charts_count = attributes[:charts_count] if attributes.key?(:charts_count)
      self.tables_count = attributes[:tables_count] if attributes.key?(:tables_count)
      self.pivot_tables_count = attributes[:pivot_tables_count] if attributes.key?(:pivot_tables_count)
      self.shapes_count = attributes[:shapes_count] if attributes.key?(:shapes_count)
      self.hyperlinks_count = attributes[:hyperlinks_count] if attributes.key?(:hyperlinks_count)
      self.query_tables_count = attributes[:query_tables_count] if attributes.key?(:query_tables_count)
      self.cells_count = attributes[:cells_count] if attributes.key?(:cells_count)
      self.cells_count_in_table = attributes[:cells_count_in_table] if attributes.key?(:cells_count_in_table)
      self.cells_count_is_formula = attributes[:cells_count_is_formula] if attributes.key?(:cells_count_is_formula)
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
