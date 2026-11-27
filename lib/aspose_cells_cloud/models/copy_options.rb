=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="CopyOptions.rb">
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

  # Represents the copy options.
  class CopyOptions
    # Indicates whether copying column width in unit of characters.
    # @return [BOOLEAN]
    attr_accessor :column_character_width
    # If the formula is not valid for the dest destination, only copy values.
    # @return [BOOLEAN]
    attr_accessor :copy_invalid_formulas_as_values
    # Indicates whether copying the names.
    # @return [BOOLEAN]
    attr_accessor :copy_names
    # Indicates whether extend ranges when copying the range to adjacent range.
    # @return [BOOLEAN]
    attr_accessor :extend_to_adjacent_range
    # When copying the range in the same file and the chart refers to the source sheet,             False means the copied chart's data source will not be changed.             True means the copied chart's data source refers to the destination sheet.
    # @return [BOOLEAN]
    attr_accessor :refer_to_destination_sheet
    # In ms excel, when copying formulas which refer to other worksheets while copying a worksheet to another one,             the copied formulas should refer to source workbook.             However, for some situations user may need the copied formulas refer to worksheets with the same name             in the same workbook, such as when those worksheets have been copied before this copy operation,             then this property should be kept as true.
    # @return [BOOLEAN]
    attr_accessor :refer_to_sheet_with_same_name
    # @return [BOOLEAN]
    attr_accessor :copy_theme

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'column_character_width' => :'ColumnCharacterWidth',
        :'copy_invalid_formulas_as_values' => :'CopyInvalidFormulasAsValues',
        :'copy_names' => :'CopyNames',
        :'extend_to_adjacent_range' => :'ExtendToAdjacentRange',
        :'refer_to_destination_sheet' => :'ReferToDestinationSheet',
        :'refer_to_sheet_with_same_name' => :'ReferToSheetWithSameName',
        :'copy_theme' => :'CopyTheme',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'column_character_width' => :'BOOLEAN',
        :'copy_invalid_formulas_as_values' => :'BOOLEAN',
        :'copy_names' => :'BOOLEAN',
        :'extend_to_adjacent_range' => :'BOOLEAN',
        :'refer_to_destination_sheet' => :'BOOLEAN',
        :'refer_to_sheet_with_same_name' => :'BOOLEAN',
        :'copy_theme' => :'BOOLEAN',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.column_character_width = attributes[:column_character_width] if attributes.key?(:column_character_width)
      self.copy_invalid_formulas_as_values = attributes[:copy_invalid_formulas_as_values] if attributes.key?(:copy_invalid_formulas_as_values)
      self.copy_names = attributes[:copy_names] if attributes.key?(:copy_names)
      self.extend_to_adjacent_range = attributes[:extend_to_adjacent_range] if attributes.key?(:extend_to_adjacent_range)
      self.refer_to_destination_sheet = attributes[:refer_to_destination_sheet] if attributes.key?(:refer_to_destination_sheet)
      self.refer_to_sheet_with_same_name = attributes[:refer_to_sheet_with_same_name] if attributes.key?(:refer_to_sheet_with_same_name)
      self.copy_theme = attributes[:copy_theme] if attributes.key?(:copy_theme)
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
