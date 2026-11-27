=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="DataSorter.rb">
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

  # Summary description for DataSorter.
  class DataSorter
    # Gets and sets whether case sensitive when comparing string.
    # @return [BOOLEAN]
    attr_accessor :case_sensitive
    # Represents whether the range has headers.
    # @return [BOOLEAN]
    attr_accessor :has_headers
    # Gets the key list of data sorter.
    # @return [Array<SortKey>]
    attr_accessor :key_list
    # True means that sorting orientation is from left to right.             False means that sorting orientation is from top to bottom.             The default value is false.
    # @return [BOOLEAN]
    attr_accessor :sort_left_to_right
    # Indicates whether sorting anything that looks like a number.
    # @return [BOOLEAN]
    attr_accessor :sort_as_number
    # Gets the key list of data sorter.
    # @return [Array<DataSorterKey>]
    attr_accessor :keys

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'case_sensitive' => :'CaseSensitive',
        :'has_headers' => :'HasHeaders',
        :'key_list' => :'KeyList',
        :'sort_left_to_right' => :'SortLeftToRight',
        :'sort_as_number' => :'SortAsNumber',
        :'keys' => :'Keys',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'case_sensitive' => :'BOOLEAN',
        :'has_headers' => :'BOOLEAN',
        :'key_list' => :'Array<SortKey>',
        :'sort_left_to_right' => :'BOOLEAN',
        :'sort_as_number' => :'BOOLEAN',
        :'keys' => :'Array<DataSorterKey>',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.case_sensitive = attributes[:case_sensitive] if attributes.key?(:case_sensitive)
      self.has_headers = attributes[:has_headers] if attributes.key?(:has_headers)
      self.key_list = attributes[:key_list] if attributes.key?(:key_list)
      self.sort_left_to_right = attributes[:sort_left_to_right] if attributes.key?(:sort_left_to_right)
      self.sort_as_number = attributes[:sort_as_number] if attributes.key?(:sort_as_number)
      self.keys = attributes[:keys] if attributes.key?(:keys)
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
