=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ImportIntArrayOption.rb">
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

  # I'm here to help! Just provide me with the features you'd like to summarize.
  class ImportIntArrayOption < ImportOption
    # This class has a public property named "FirstRow" of type integer with both get and set accessors.
    # @return [Integer]
    attr_accessor :first_row
    # @return [Integer]
    attr_accessor :first_column
    # @return [BOOLEAN]
    attr_accessor :is_vertical
    # @return [Array<Integer>]
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
        :'first_row' => :'FirstRow',
        :'first_column' => :'FirstColumn',
        :'is_vertical' => :'IsVertical',
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
        :'first_row' => :'Integer',
        :'first_column' => :'Integer',
        :'is_vertical' => :'BOOLEAN',
        :'data' => :'Array<Integer>',
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
      self.first_row = attributes[:first_row] if attributes.key?(:first_row)
      self.first_column = attributes[:first_column] if attributes.key?(:first_column)
      self.is_vertical = attributes[:is_vertical] if attributes.key?(:is_vertical)
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
