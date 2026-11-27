=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ImportPictureOption.rb">
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
require_relative 'import_option'

module AsposeCellsCloud

  # Class summary: The features of the topic were explored, discussing its components, patterns, and significance.
  class ImportPictureOption < ImportOption
    # A property "UpperLeftRow" of type integer with a public getter and setter is defined.
    # @return [Integer]
    attr_accessor :upper_left_row
    # @return [Integer]
    attr_accessor :upper_left_column
    # @return [Integer]
    attr_accessor :lower_right_row
    # @return [Integer]
    attr_accessor :lower_right_column
    # @return [String]
    attr_accessor :filename
    # base64
    # @return [String]
    attr_accessor :data
    # @return [String]
    attr_accessor :destination_worksheet
    # @return [BOOLEAN]
    attr_accessor :is_insert
    # @return [String]
    attr_accessor :import_data_type
    # @return [DataSource]
    attr_accessor :data_source
    # @return [FileSource]
    attr_accessor :source

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'upper_left_row' => :'UpperLeftRow',
        :'upper_left_column' => :'UpperLeftColumn',
        :'lower_right_row' => :'LowerRightRow',
        :'lower_right_column' => :'LowerRightColumn',
        :'filename' => :'Filename',
        :'data' => :'Data',
        :'destination_worksheet' => :'DestinationWorksheet',
        :'is_insert' => :'IsInsert',
        :'import_data_type' => :'ImportDataType',
        :'data_source' => :'DataSource',
        :'source' => :'Source',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'upper_left_row' => :'Integer',
        :'upper_left_column' => :'Integer',
        :'lower_right_row' => :'Integer',
        :'lower_right_column' => :'Integer',
        :'filename' => :'String',
        :'data' => :'String',
        :'destination_worksheet' => :'String',
        :'is_insert' => :'BOOLEAN',
        :'import_data_type' => :'String',
        :'data_source' => :'DataSource',
        :'source' => :'FileSource',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.upper_left_row = attributes[:upper_left_row] if attributes.key?(:upper_left_row)
      self.upper_left_column = attributes[:upper_left_column] if attributes.key?(:upper_left_column)
      self.lower_right_row = attributes[:lower_right_row] if attributes.key?(:lower_right_row)
      self.lower_right_column = attributes[:lower_right_column] if attributes.key?(:lower_right_column)
      self.filename = attributes[:filename] if attributes.key?(:filename)
      self.data = attributes[:data] if attributes.key?(:data)
      self.destination_worksheet = attributes[:destination_worksheet] if attributes.key?(:destination_worksheet)
      self.is_insert = attributes[:is_insert] if attributes.key?(:is_insert)
      self.import_data_type = attributes[:import_data_type] if attributes.key?(:import_data_type)
      self.data_source = attributes[:data_source] if attributes.key?(:data_source)
      self.source = attributes[:source] if attributes.key?(:source)
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
