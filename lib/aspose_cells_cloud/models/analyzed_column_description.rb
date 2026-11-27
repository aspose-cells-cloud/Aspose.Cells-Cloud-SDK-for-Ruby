=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="AnalyzedColumnDescription.rb">
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

  # Represents description of analyzed column.
  class AnalyzedColumnDescription
    # Column index.
    # @return [Integer]
    attr_accessor :index
    # The true position index value of the column.
    # @return [Integer]
    attr_accessor :column_index
    # This class has a public property "Title" of type string with a default value of an empty string.
    # @return [String]
    attr_accessor :title
    # When the repetition rate is high, can it be viewed as a group display?
    # @return [Float]
    attr_accessor :repetition_rate
    # The column type is identified, and the attributes of the column are determined after data analysis.
    # @return [String]
    attr_accessor :column_data_data_type
    # @return [String]
    attr_accessor :number_category_type
    # @return [String]
    attr_accessor :text_category_type
    # @return [Integer]
    attr_accessor :style_number
    # Column data exception description.
    # @return [String]
    attr_accessor :column_data_exception_description

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'index' => :'Index',
        :'column_index' => :'ColumnIndex',
        :'title' => :'Title',
        :'repetition_rate' => :'RepetitionRate',
        :'column_data_data_type' => :'ColumnDataDataType',
        :'number_category_type' => :'NumberCategoryType',
        :'text_category_type' => :'TextCategoryType',
        :'style_number' => :'StyleNumber',
        :'column_data_exception_description' => :'columnDataExceptionDescription',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'index' => :'Integer',
        :'column_index' => :'Integer',
        :'title' => :'String',
        :'repetition_rate' => :'Float',
        :'column_data_data_type' => :'String',
        :'number_category_type' => :'String',
        :'text_category_type' => :'String',
        :'style_number' => :'Integer',
        :'column_data_exception_description' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.index = attributes[:index] if attributes.key?(:index)
      self.column_index = attributes[:column_index] if attributes.key?(:column_index)
      self.title = attributes[:title] if attributes.key?(:title)
      self.repetition_rate = attributes[:repetition_rate] if attributes.key?(:repetition_rate)
      self.column_data_data_type = attributes[:column_data_data_type] if attributes.key?(:column_data_data_type)
      self.number_category_type = attributes[:number_category_type] if attributes.key?(:number_category_type)
      self.text_category_type = attributes[:text_category_type] if attributes.key?(:text_category_type)
      self.style_number = attributes[:style_number] if attributes.key?(:style_number)
      self.column_data_exception_description = attributes[:column_data_exception_description] if attributes.key?(:column_data_exception_description)
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
