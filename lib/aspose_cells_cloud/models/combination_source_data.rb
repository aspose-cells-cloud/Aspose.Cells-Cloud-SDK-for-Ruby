=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="CombinationSourceData.rb">
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

  class CombinationSourceData
    # @return [String]
    attr_accessor :tag
    # @return [DataSource]
    attr_accessor :data_source
    # @return [FileInfo]
    attr_accessor :file_info
    # @return [String]
    attr_accessor :worksheet
    # @return [String]
    attr_accessor :table_name
    # @return [String]
    attr_accessor :cell_area
    # @return [BOOLEAN]
    attr_accessor :has_header

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tag' => :'Tag',
        :'data_source' => :'DataSource',
        :'file_info' => :'FileInfo',
        :'worksheet' => :'Worksheet',
        :'table_name' => :'TableName',
        :'cell_area' => :'CellArea',
        :'has_header' => :'HasHeader',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'tag' => :'String',
        :'data_source' => :'DataSource',
        :'file_info' => :'FileInfo',
        :'worksheet' => :'String',
        :'table_name' => :'String',
        :'cell_area' => :'String',
        :'has_header' => :'BOOLEAN',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.tag = attributes[:tag] if attributes.key?(:tag)
      self.data_source = attributes[:data_source] if attributes.key?(:data_source)
      self.file_info = attributes[:file_info] if attributes.key?(:file_info)
      self.worksheet = attributes[:worksheet] if attributes.key?(:worksheet)
      self.table_name = attributes[:table_name] if attributes.key?(:table_name)
      self.cell_area = attributes[:cell_area] if attributes.key?(:cell_area)
      self.has_header = attributes[:has_header] if attributes.key?(:has_header)
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
