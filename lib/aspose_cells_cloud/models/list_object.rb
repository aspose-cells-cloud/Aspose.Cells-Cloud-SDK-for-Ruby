=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ListObject.rb">
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

  # Represents a list object on a worksheet.            The ListObject object is a member of the ListObjects collection.             The ListObjects collection contains all the list objects on a worksheet.
  class ListObject < LinkElement
    # Gets auto filter.
    # @return [AutoFilter]
    attr_accessor :auto_filter
    # Gets and sets the display name.
    # @return [String]
    attr_accessor :display_name
    # Gets the start column of the range.
    # @return [Integer]
    attr_accessor :start_column
    # Gets the start row of the range.
    # @return [Integer]
    attr_accessor :start_row
    # Gets the end column of the range.
    # @return [Integer]
    attr_accessor :end_column
    # Gets the end  row of the range.
    # @return [Integer]
    attr_accessor :end_row
    # Gets ListColumns of the ListObject.
    # @return [Array<ListColumn>]
    attr_accessor :list_columns
    # Gets and sets whether this ListObject show header row.
    # @return [BOOLEAN]
    attr_accessor :show_header_row
    # Indicates whether column stripe formatting is applied.
    # @return [BOOLEAN]
    attr_accessor :show_table_style_column_stripes
    # Indicates whether the first column in the table should have the style applied.
    # @return [BOOLEAN]
    attr_accessor :show_table_style_first_column
    # Indicates whether the last column in the table should have the style applied.
    # @return [BOOLEAN]
    attr_accessor :show_table_style_last_column
    # Indicates whether row stripe formatting is applied.
    # @return [BOOLEAN]
    attr_accessor :show_table_style_row_stripes
    # Gets and sets whether this ListObject show total row.
    # @return [BOOLEAN]
    attr_accessor :show_totals
    # Gets and sets the table style name.
    # @return [String]
    attr_accessor :table_style_name
    # Gets and the built-in table style.
    # @return [String]
    attr_accessor :table_style_type
    # Gets the data range of the ListObject.
    # @return [Range]
    attr_accessor :data_range
    # Gets the data source type of the table.
    # @return [String]
    attr_accessor :data_source_type
    # Gets and sets the comment of the table.
    # @return [String]
    attr_accessor :comment
    # Gets an  used for this list.
    # @return [XmlMap]
    attr_accessor :xml_map
    # Gets and sets the alternative text.
    # @return [String]
    attr_accessor :alternative_text
    # Gets and sets the alternative description.
    # @return [String]
    attr_accessor :alternative_description
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_filter' => :'AutoFilter',
        :'display_name' => :'DisplayName',
        :'start_column' => :'StartColumn',
        :'start_row' => :'StartRow',
        :'end_column' => :'EndColumn',
        :'end_row' => :'EndRow',
        :'list_columns' => :'ListColumns',
        :'show_header_row' => :'ShowHeaderRow',
        :'show_table_style_column_stripes' => :'ShowTableStyleColumnStripes',
        :'show_table_style_first_column' => :'ShowTableStyleFirstColumn',
        :'show_table_style_last_column' => :'ShowTableStyleLastColumn',
        :'show_table_style_row_stripes' => :'ShowTableStyleRowStripes',
        :'show_totals' => :'ShowTotals',
        :'table_style_name' => :'TableStyleName',
        :'table_style_type' => :'TableStyleType',
        :'data_range' => :'DataRange',
        :'data_source_type' => :'DataSourceType',
        :'comment' => :'Comment',
        :'xml_map' => :'XmlMap',
        :'alternative_text' => :'AlternativeText',
        :'alternative_description' => :'AlternativeDescription',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_filter' => :'AutoFilter',
        :'display_name' => :'String',
        :'start_column' => :'Integer',
        :'start_row' => :'Integer',
        :'end_column' => :'Integer',
        :'end_row' => :'Integer',
        :'list_columns' => :'Array<ListColumn>',
        :'show_header_row' => :'BOOLEAN',
        :'show_table_style_column_stripes' => :'BOOLEAN',
        :'show_table_style_first_column' => :'BOOLEAN',
        :'show_table_style_last_column' => :'BOOLEAN',
        :'show_table_style_row_stripes' => :'BOOLEAN',
        :'show_totals' => :'BOOLEAN',
        :'table_style_name' => :'String',
        :'table_style_type' => :'String',
        :'data_range' => :'Range',
        :'data_source_type' => :'String',
        :'comment' => :'String',
        :'xml_map' => :'XmlMap',
        :'alternative_text' => :'String',
        :'alternative_description' => :'String',
        :'link' => :'Link',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.auto_filter = attributes[:auto_filter] if attributes.key?(:auto_filter)
      self.display_name = attributes[:display_name] if attributes.key?(:display_name)
      self.start_column = attributes[:start_column] if attributes.key?(:start_column)
      self.start_row = attributes[:start_row] if attributes.key?(:start_row)
      self.end_column = attributes[:end_column] if attributes.key?(:end_column)
      self.end_row = attributes[:end_row] if attributes.key?(:end_row)
      self.list_columns = attributes[:list_columns] if attributes.key?(:list_columns)
      self.show_header_row = attributes[:show_header_row] if attributes.key?(:show_header_row)
      self.show_table_style_column_stripes = attributes[:show_table_style_column_stripes] if attributes.key?(:show_table_style_column_stripes)
      self.show_table_style_first_column = attributes[:show_table_style_first_column] if attributes.key?(:show_table_style_first_column)
      self.show_table_style_last_column = attributes[:show_table_style_last_column] if attributes.key?(:show_table_style_last_column)
      self.show_table_style_row_stripes = attributes[:show_table_style_row_stripes] if attributes.key?(:show_table_style_row_stripes)
      self.show_totals = attributes[:show_totals] if attributes.key?(:show_totals)
      self.table_style_name = attributes[:table_style_name] if attributes.key?(:table_style_name)
      self.table_style_type = attributes[:table_style_type] if attributes.key?(:table_style_type)
      self.data_range = attributes[:data_range] if attributes.key?(:data_range)
      self.data_source_type = attributes[:data_source_type] if attributes.key?(:data_source_type)
      self.comment = attributes[:comment] if attributes.key?(:comment)
      self.xml_map = attributes[:xml_map] if attributes.key?(:xml_map)
      self.alternative_text = attributes[:alternative_text] if attributes.key?(:alternative_text)
      self.alternative_description = attributes[:alternative_description] if attributes.key?(:alternative_description)
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
