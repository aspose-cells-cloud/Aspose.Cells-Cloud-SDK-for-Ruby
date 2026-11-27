=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Cell.rb">
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

  # Encapsulates the object that represents a single Workbook cell.
  class Cell < LinkElement
    # Gets the name of the cell.
    # @return [String]
    attr_accessor :name
    # Gets row number (zero based) of the cell.
    # @return [Integer]
    attr_accessor :row
    # Gets column number (zero based) of the cell.
    # @return [Integer]
    attr_accessor :column
    # Gets the value contained in this cell.
    # @return [String]
    attr_accessor :value
    # Represents cell value type.
    # @return [String]
    attr_accessor :type
    # Gets or sets a formula of the .
    # @return [String]
    attr_accessor :formula
    # Represents if the specified cell contains formula.
    # @return [BOOLEAN]
    attr_accessor :is_formula
    # Checks if a cell is part of a merged range or not.
    # @return [BOOLEAN]
    attr_accessor :is_merged
    # Indicates the cell's formula is and array formula                          and it is the first cell of the array.
    # @return [BOOLEAN]
    attr_accessor :is_array_header
    # Indicates whether the cell formula is an array formula.
    # @return [BOOLEAN]
    attr_accessor :is_in_array
    # Checks if the value of this cell is an error.
    # @return [BOOLEAN]
    attr_accessor :is_error_value
    # Indicates whether this cell is part of table formula.
    # @return [BOOLEAN]
    attr_accessor :is_in_table
    # Indicates if the cell's style is set. If return false, it means this cell has a default cell format.
    # @return [BOOLEAN]
    attr_accessor :is_style_set
    # Gets and sets the html string which contains data and some formats in this cell.
    # @return [String]
    attr_accessor :html_string
    # This class property represents a style element with the specified XML element name.
    # @return [LinkElement]
    attr_accessor :style
    # Gets the parent worksheet.
    # @return [String]
    attr_accessor :worksheet
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'row' => :'Row',
        :'column' => :'Column',
        :'value' => :'Value',
        :'type' => :'Type',
        :'formula' => :'Formula',
        :'is_formula' => :'IsFormula',
        :'is_merged' => :'IsMerged',
        :'is_array_header' => :'IsArrayHeader',
        :'is_in_array' => :'IsInArray',
        :'is_error_value' => :'IsErrorValue',
        :'is_in_table' => :'IsInTable',
        :'is_style_set' => :'IsStyleSet',
        :'html_string' => :'HtmlString',
        :'style' => :'Style',
        :'worksheet' => :'Worksheet',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'row' => :'Integer',
        :'column' => :'Integer',
        :'value' => :'String',
        :'type' => :'String',
        :'formula' => :'String',
        :'is_formula' => :'BOOLEAN',
        :'is_merged' => :'BOOLEAN',
        :'is_array_header' => :'BOOLEAN',
        :'is_in_array' => :'BOOLEAN',
        :'is_error_value' => :'BOOLEAN',
        :'is_in_table' => :'BOOLEAN',
        :'is_style_set' => :'BOOLEAN',
        :'html_string' => :'String',
        :'style' => :'LinkElement',
        :'worksheet' => :'String',
        :'link' => :'Link',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.name = attributes[:name] if attributes.key?(:name)
      self.row = attributes[:row] if attributes.key?(:row)
      self.column = attributes[:column] if attributes.key?(:column)
      self.value = attributes[:value] if attributes.key?(:value)
      self.type = attributes[:type] if attributes.key?(:type)
      self.formula = attributes[:formula] if attributes.key?(:formula)
      self.is_formula = attributes[:is_formula] if attributes.key?(:is_formula)
      self.is_merged = attributes[:is_merged] if attributes.key?(:is_merged)
      self.is_array_header = attributes[:is_array_header] if attributes.key?(:is_array_header)
      self.is_in_array = attributes[:is_in_array] if attributes.key?(:is_in_array)
      self.is_error_value = attributes[:is_error_value] if attributes.key?(:is_error_value)
      self.is_in_table = attributes[:is_in_table] if attributes.key?(:is_in_table)
      self.is_style_set = attributes[:is_style_set] if attributes.key?(:is_style_set)
      self.html_string = attributes[:html_string] if attributes.key?(:html_string)
      self.style = attributes[:style] if attributes.key?(:style)
      self.worksheet = attributes[:worksheet] if attributes.key?(:worksheet)
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
