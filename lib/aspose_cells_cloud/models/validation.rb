=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Validation.rb">
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

  # Represents data validation.settings.
  class Validation < LinkElement
    # Represents the validation alert style.
    # @return [String]
    attr_accessor :alert_style
    # Represents a collection of Aspose.Cells.CellArea which contains the data                 validation settings.
    # @return [Array<CellArea>]
    attr_accessor :area_list
    # Represents the data validation error message.
    # @return [String]
    attr_accessor :error_message
    # Represents the title of the data-validation error dialog box.
    # @return [String]
    attr_accessor :error_title
    # Represents the value or expression associated with the data validation.
    # @return [String]
    attr_accessor :formula1
    # Represents the value or expression associated with the data validation.
    # @return [String]
    attr_accessor :formula2
    # Indicates whether blank values are permitted by the range data validation.
    # @return [BOOLEAN]
    attr_accessor :ignore_blank
    # Indicates whether data validation displays a drop-down list that contains acceptable values.
    # @return [BOOLEAN]
    attr_accessor :in_cell_drop_down
    # Represents the data validation input message.
    # @return [String]
    attr_accessor :input_message
    # Represents the title of the data-validation input dialog box.
    # @return [String]
    attr_accessor :input_title
    # Represents the operator for the data validation.
    # @return [String]
    attr_accessor :operator
    # Indicates whether the data validation error message will be displayed whenever the user enters invalid data.
    # @return [BOOLEAN]
    attr_accessor :show_error
    # Indicates whether the data validation input message will be displayed whenever the user selects a cell in the data validation range.
    # @return [BOOLEAN]
    attr_accessor :show_input
    # Represents the data validation type.
    # @return [String]
    attr_accessor :type
    # Represents the first value associated with the data validation.
    # @return [String]
    attr_accessor :value1
    # Represents the second value associated with the data validation.
    # @return [String]
    attr_accessor :value2
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'alert_style' => :'AlertStyle',
        :'area_list' => :'AreaList',
        :'error_message' => :'ErrorMessage',
        :'error_title' => :'ErrorTitle',
        :'formula1' => :'Formula1',
        :'formula2' => :'Formula2',
        :'ignore_blank' => :'IgnoreBlank',
        :'in_cell_drop_down' => :'InCellDropDown',
        :'input_message' => :'InputMessage',
        :'input_title' => :'InputTitle',
        :'operator' => :'Operator',
        :'show_error' => :'ShowError',
        :'show_input' => :'ShowInput',
        :'type' => :'Type',
        :'value1' => :'Value1',
        :'value2' => :'Value2',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'alert_style' => :'String',
        :'area_list' => :'Array<CellArea>',
        :'error_message' => :'String',
        :'error_title' => :'String',
        :'formula1' => :'String',
        :'formula2' => :'String',
        :'ignore_blank' => :'BOOLEAN',
        :'in_cell_drop_down' => :'BOOLEAN',
        :'input_message' => :'String',
        :'input_title' => :'String',
        :'operator' => :'String',
        :'show_error' => :'BOOLEAN',
        :'show_input' => :'BOOLEAN',
        :'type' => :'String',
        :'value1' => :'String',
        :'value2' => :'String',
        :'link' => :'Link',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.alert_style = attributes[:alert_style] if attributes.key?(:alert_style)
      self.area_list = attributes[:area_list] if attributes.key?(:area_list)
      self.error_message = attributes[:error_message] if attributes.key?(:error_message)
      self.error_title = attributes[:error_title] if attributes.key?(:error_title)
      self.formula1 = attributes[:formula1] if attributes.key?(:formula1)
      self.formula2 = attributes[:formula2] if attributes.key?(:formula2)
      self.ignore_blank = attributes[:ignore_blank] if attributes.key?(:ignore_blank)
      self.in_cell_drop_down = attributes[:in_cell_drop_down] if attributes.key?(:in_cell_drop_down)
      self.input_message = attributes[:input_message] if attributes.key?(:input_message)
      self.input_title = attributes[:input_title] if attributes.key?(:input_title)
      self.operator = attributes[:operator] if attributes.key?(:operator)
      self.show_error = attributes[:show_error] if attributes.key?(:show_error)
      self.show_input = attributes[:show_input] if attributes.key?(:show_input)
      self.type = attributes[:type] if attributes.key?(:type)
      self.value1 = attributes[:value1] if attributes.key?(:value1)
      self.value2 = attributes[:value2] if attributes.key?(:value2)
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
