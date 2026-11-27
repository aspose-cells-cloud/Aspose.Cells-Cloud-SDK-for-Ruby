=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Protection.rb">
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

  # Represents the various types of protection options available for a worksheet.
  class Protection
    # Represents if the deletion of columns is allowed on a protected worksheet.
    # @return [BOOLEAN]
    attr_accessor :allow_deleting_column
    # Represents if the deletion of rows is allowed on a protected worksheet.
    # @return [BOOLEAN]
    attr_accessor :allow_deleting_row
    # Represents if the user is allowed to make use of an AutoFilter that was created before the sheet was protected.
    # @return [BOOLEAN]
    attr_accessor :allow_filtering
    # Represents if the formatting of cells is allowed on a protected worksheet.
    # @return [BOOLEAN]
    attr_accessor :allow_formatting_cell
    # Represents if the formatting of columns is allowed on a protected worksheet
    # @return [BOOLEAN]
    attr_accessor :allow_formatting_column
    # Represents if the formatting of rows is allowed on a protected worksheet
    # @return [BOOLEAN]
    attr_accessor :allow_formatting_row
    # Represents if the insertion of columns is allowed on a protected worksheet
    # @return [BOOLEAN]
    attr_accessor :allow_inserting_column
    # Represents if the insertion of hyperlinks is allowed on a protected worksheet
    # @return [BOOLEAN]
    attr_accessor :allow_inserting_hyperlink
    # Represents if the insertion of rows is allowed on a protected worksheet
    # @return [BOOLEAN]
    attr_accessor :allow_inserting_row
    # Represents if the sorting option is allowed on a protected worksheet.
    # @return [BOOLEAN]
    attr_accessor :allow_sorting
    # Represents if the user is allowed to manipulate pivot tables on a protected worksheet.
    # @return [BOOLEAN]
    attr_accessor :allow_using_pivot_table
    # Represents if the user is allowed to edit contents of locked cells on a protected worksheet.
    # @return [BOOLEAN]
    attr_accessor :allow_editing_content
    # Represents if the user is allowed to manipulate drawing objects on a protected worksheet.
    # @return [BOOLEAN]
    attr_accessor :allow_editing_object
    # Represents if the user is allowed to edit scenarios on a protected worksheet.
    # @return [BOOLEAN]
    attr_accessor :allow_editing_scenario
    # Represents the password to protect the worksheet.
    # @return [String]
    attr_accessor :password
    # Represents if the user is allowed to select locked cells on a protected worksheet.
    # @return [BOOLEAN]
    attr_accessor :allow_selecting_locked_cell
    # Represents if the user is allowed to select unlocked cells on a protected worksheet.
    # @return [BOOLEAN]
    attr_accessor :allow_selecting_unlocked_cell

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allow_deleting_column' => :'AllowDeletingColumn',
        :'allow_deleting_row' => :'AllowDeletingRow',
        :'allow_filtering' => :'AllowFiltering',
        :'allow_formatting_cell' => :'AllowFormattingCell',
        :'allow_formatting_column' => :'AllowFormattingColumn',
        :'allow_formatting_row' => :'AllowFormattingRow',
        :'allow_inserting_column' => :'AllowInsertingColumn',
        :'allow_inserting_hyperlink' => :'AllowInsertingHyperlink',
        :'allow_inserting_row' => :'AllowInsertingRow',
        :'allow_sorting' => :'AllowSorting',
        :'allow_using_pivot_table' => :'AllowUsingPivotTable',
        :'allow_editing_content' => :'AllowEditingContent',
        :'allow_editing_object' => :'AllowEditingObject',
        :'allow_editing_scenario' => :'AllowEditingScenario',
        :'password' => :'Password',
        :'allow_selecting_locked_cell' => :'AllowSelectingLockedCell',
        :'allow_selecting_unlocked_cell' => :'AllowSelectingUnlockedCell',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'allow_deleting_column' => :'BOOLEAN',
        :'allow_deleting_row' => :'BOOLEAN',
        :'allow_filtering' => :'BOOLEAN',
        :'allow_formatting_cell' => :'BOOLEAN',
        :'allow_formatting_column' => :'BOOLEAN',
        :'allow_formatting_row' => :'BOOLEAN',
        :'allow_inserting_column' => :'BOOLEAN',
        :'allow_inserting_hyperlink' => :'BOOLEAN',
        :'allow_inserting_row' => :'BOOLEAN',
        :'allow_sorting' => :'BOOLEAN',
        :'allow_using_pivot_table' => :'BOOLEAN',
        :'allow_editing_content' => :'BOOLEAN',
        :'allow_editing_object' => :'BOOLEAN',
        :'allow_editing_scenario' => :'BOOLEAN',
        :'password' => :'String',
        :'allow_selecting_locked_cell' => :'BOOLEAN',
        :'allow_selecting_unlocked_cell' => :'BOOLEAN',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.allow_deleting_column = attributes[:allow_deleting_column] if attributes.key?(:allow_deleting_column)
      self.allow_deleting_row = attributes[:allow_deleting_row] if attributes.key?(:allow_deleting_row)
      self.allow_filtering = attributes[:allow_filtering] if attributes.key?(:allow_filtering)
      self.allow_formatting_cell = attributes[:allow_formatting_cell] if attributes.key?(:allow_formatting_cell)
      self.allow_formatting_column = attributes[:allow_formatting_column] if attributes.key?(:allow_formatting_column)
      self.allow_formatting_row = attributes[:allow_formatting_row] if attributes.key?(:allow_formatting_row)
      self.allow_inserting_column = attributes[:allow_inserting_column] if attributes.key?(:allow_inserting_column)
      self.allow_inserting_hyperlink = attributes[:allow_inserting_hyperlink] if attributes.key?(:allow_inserting_hyperlink)
      self.allow_inserting_row = attributes[:allow_inserting_row] if attributes.key?(:allow_inserting_row)
      self.allow_sorting = attributes[:allow_sorting] if attributes.key?(:allow_sorting)
      self.allow_using_pivot_table = attributes[:allow_using_pivot_table] if attributes.key?(:allow_using_pivot_table)
      self.allow_editing_content = attributes[:allow_editing_content] if attributes.key?(:allow_editing_content)
      self.allow_editing_object = attributes[:allow_editing_object] if attributes.key?(:allow_editing_object)
      self.allow_editing_scenario = attributes[:allow_editing_scenario] if attributes.key?(:allow_editing_scenario)
      self.password = attributes[:password] if attributes.key?(:password)
      self.allow_selecting_locked_cell = attributes[:allow_selecting_locked_cell] if attributes.key?(:allow_selecting_locked_cell)
      self.allow_selecting_unlocked_cell = attributes[:allow_selecting_unlocked_cell] if attributes.key?(:allow_selecting_unlocked_cell)
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
