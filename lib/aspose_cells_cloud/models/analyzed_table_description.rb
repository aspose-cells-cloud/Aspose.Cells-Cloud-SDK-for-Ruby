=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="AnalyzedTableDescription.rb">
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

  # Represents analyzed table description.
  class AnalyzedTableDescription
    # Represents table name.
    # @return [String]
    attr_accessor :name
    # Represents worksheet name which is where the table is located.
    # @return [String]
    attr_accessor :sheet_name
    # Represents analyzed description about table columns.
    # @return [Array<AnalyzedColumnDescription>]
    attr_accessor :columns
    # Represents date columns list.
    # @return [Array<Integer>]
    attr_accessor :date_columns
    # Represents number columns list.
    # @return [Array<Integer>]
    attr_accessor :number_columns
    # Represents string columns list.
    # @return [Array<Integer>]
    attr_accessor :text_columns
    # Represents exception columns list.
    # @return [Array<Integer>]
    attr_accessor :exception_columns
    # Represents there is a table header in the table.
    # @return [BOOLEAN]
    attr_accessor :has_table_header_row
    # Represents there is a total row in the table.
    # @return [BOOLEAN]
    attr_accessor :has_table_total_row
    # Represents the column index as the start data column.
    # @return [Integer]
    attr_accessor :start_data_column_index
    # Represents the column index as the end data column.
    # @return [Integer]
    attr_accessor :end_data_column_index
    # Represents the row index as the start data row.
    # @return [Integer]
    attr_accessor :start_data_row_index
    # Represents the row index as the end data row.
    # @return [Integer]
    attr_accessor :end_data_row_index
    # Represents table thumbnail. Base64String
    # @return [String]
    attr_accessor :thumbnail
    # Represents a collection of charts, which is a collection of charts created based on data analysis of a table.
    # @return [Array<DiscoverChart>]
    attr_accessor :discover_charts
    # Represents a collection of pivot tables, which is a collection of pivot tables created based on data analysis of a table.
    # @return [Array<DiscoverPivotTable>]
    attr_accessor :discover_pivot_tables

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'sheet_name' => :'SheetName',
        :'columns' => :'Columns',
        :'date_columns' => :'DateColumns',
        :'number_columns' => :'NumberColumns',
        :'text_columns' => :'TextColumns',
        :'exception_columns' => :'ExceptionColumns',
        :'has_table_header_row' => :'HasTableHeaderRow',
        :'has_table_total_row' => :'HasTableTotalRow',
        :'start_data_column_index' => :'StartDataColumnIndex',
        :'end_data_column_index' => :'EndDataColumnIndex',
        :'start_data_row_index' => :'StartDataRowIndex',
        :'end_data_row_index' => :'EndDataRowIndex',
        :'thumbnail' => :'Thumbnail',
        :'discover_charts' => :'DiscoverCharts',
        :'discover_pivot_tables' => :'DiscoverPivotTables',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'sheet_name' => :'String',
        :'columns' => :'Array<AnalyzedColumnDescription>',
        :'date_columns' => :'Array<Integer>',
        :'number_columns' => :'Array<Integer>',
        :'text_columns' => :'Array<Integer>',
        :'exception_columns' => :'Array<Integer>',
        :'has_table_header_row' => :'BOOLEAN',
        :'has_table_total_row' => :'BOOLEAN',
        :'start_data_column_index' => :'Integer',
        :'end_data_column_index' => :'Integer',
        :'start_data_row_index' => :'Integer',
        :'end_data_row_index' => :'Integer',
        :'thumbnail' => :'String',
        :'discover_charts' => :'Array<DiscoverChart>',
        :'discover_pivot_tables' => :'Array<DiscoverPivotTable>',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.name = attributes[:name] if attributes.key?(:name)
      self.sheet_name = attributes[:sheet_name] if attributes.key?(:sheet_name)
      self.columns = attributes[:columns] if attributes.key?(:columns)
      self.date_columns = attributes[:date_columns] if attributes.key?(:date_columns)
      self.number_columns = attributes[:number_columns] if attributes.key?(:number_columns)
      self.text_columns = attributes[:text_columns] if attributes.key?(:text_columns)
      self.exception_columns = attributes[:exception_columns] if attributes.key?(:exception_columns)
      self.has_table_header_row = attributes[:has_table_header_row] if attributes.key?(:has_table_header_row)
      self.has_table_total_row = attributes[:has_table_total_row] if attributes.key?(:has_table_total_row)
      self.start_data_column_index = attributes[:start_data_column_index] if attributes.key?(:start_data_column_index)
      self.end_data_column_index = attributes[:end_data_column_index] if attributes.key?(:end_data_column_index)
      self.start_data_row_index = attributes[:start_data_row_index] if attributes.key?(:start_data_row_index)
      self.end_data_row_index = attributes[:end_data_row_index] if attributes.key?(:end_data_row_index)
      self.thumbnail = attributes[:thumbnail] if attributes.key?(:thumbnail)
      self.discover_charts = attributes[:discover_charts] if attributes.key?(:discover_charts)
      self.discover_pivot_tables = attributes[:discover_pivot_tables] if attributes.key?(:discover_pivot_tables)
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
