=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ProtectSheetParameter.rb">
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

  # Class Summary: The features discussed include natural language processing, image recognition, data visualization, clustering, regression, classification, and recommendation systems.
  class ProtectSheetParameter
    # Property Summary: Defines a public string property for the ProtectionType.
    # @return [String]
    attr_accessor :protection_type
    # @return [String]
    attr_accessor :password
    # @return [Array<String>]
    attr_accessor :allow_edit_area
    # @return [String]
    attr_accessor :allow_deleting_column
    # @return [String]
    attr_accessor :allow_deleting_row
    # @return [String]
    attr_accessor :allow_filtering
    # @return [String]
    attr_accessor :allow_formatting_cell
    # @return [String]
    attr_accessor :allow_formatting_column
    # @return [String]
    attr_accessor :allow_formatting_row
    # @return [String]
    attr_accessor :allow_inserting_column
    # @return [String]
    attr_accessor :allow_inserting_hyperlink
    # @return [String]
    attr_accessor :allow_inserting_row
    # @return [String]
    attr_accessor :allow_selecting_locked_cell
    # @return [String]
    attr_accessor :allow_selecting_unlocked_cell
    # @return [String]
    attr_accessor :allow_sorting
    # @return [String]
    attr_accessor :allow_using_pivot_table

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'protection_type' => :'ProtectionType',
        :'password' => :'Password',
        :'allow_edit_area' => :'AllowEditArea',
        :'allow_deleting_column' => :'AllowDeletingColumn',
        :'allow_deleting_row' => :'AllowDeletingRow',
        :'allow_filtering' => :'AllowFiltering',
        :'allow_formatting_cell' => :'AllowFormattingCell',
        :'allow_formatting_column' => :'AllowFormattingColumn',
        :'allow_formatting_row' => :'AllowFormattingRow',
        :'allow_inserting_column' => :'AllowInsertingColumn',
        :'allow_inserting_hyperlink' => :'AllowInsertingHyperlink',
        :'allow_inserting_row' => :'AllowInsertingRow',
        :'allow_selecting_locked_cell' => :'AllowSelectingLockedCell',
        :'allow_selecting_unlocked_cell' => :'AllowSelectingUnlockedCell',
        :'allow_sorting' => :'AllowSorting',
        :'allow_using_pivot_table' => :'AllowUsingPivotTable',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'protection_type' => :'String',
        :'password' => :'String',
        :'allow_edit_area' => :'Array<String>',
        :'allow_deleting_column' => :'String',
        :'allow_deleting_row' => :'String',
        :'allow_filtering' => :'String',
        :'allow_formatting_cell' => :'String',
        :'allow_formatting_column' => :'String',
        :'allow_formatting_row' => :'String',
        :'allow_inserting_column' => :'String',
        :'allow_inserting_hyperlink' => :'String',
        :'allow_inserting_row' => :'String',
        :'allow_selecting_locked_cell' => :'String',
        :'allow_selecting_unlocked_cell' => :'String',
        :'allow_sorting' => :'String',
        :'allow_using_pivot_table' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.protection_type = attributes[:protection_type] if attributes.key?(:protection_type)
      self.password = attributes[:password] if attributes.key?(:password)
      self.allow_edit_area = attributes[:allow_edit_area] if attributes.key?(:allow_edit_area)
      self.allow_deleting_column = attributes[:allow_deleting_column] if attributes.key?(:allow_deleting_column)
      self.allow_deleting_row = attributes[:allow_deleting_row] if attributes.key?(:allow_deleting_row)
      self.allow_filtering = attributes[:allow_filtering] if attributes.key?(:allow_filtering)
      self.allow_formatting_cell = attributes[:allow_formatting_cell] if attributes.key?(:allow_formatting_cell)
      self.allow_formatting_column = attributes[:allow_formatting_column] if attributes.key?(:allow_formatting_column)
      self.allow_formatting_row = attributes[:allow_formatting_row] if attributes.key?(:allow_formatting_row)
      self.allow_inserting_column = attributes[:allow_inserting_column] if attributes.key?(:allow_inserting_column)
      self.allow_inserting_hyperlink = attributes[:allow_inserting_hyperlink] if attributes.key?(:allow_inserting_hyperlink)
      self.allow_inserting_row = attributes[:allow_inserting_row] if attributes.key?(:allow_inserting_row)
      self.allow_selecting_locked_cell = attributes[:allow_selecting_locked_cell] if attributes.key?(:allow_selecting_locked_cell)
      self.allow_selecting_unlocked_cell = attributes[:allow_selecting_unlocked_cell] if attributes.key?(:allow_selecting_unlocked_cell)
      self.allow_sorting = attributes[:allow_sorting] if attributes.key?(:allow_sorting)
      self.allow_using_pivot_table = attributes[:allow_using_pivot_table] if attributes.key?(:allow_using_pivot_table)
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
