=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="CellsDocumentProperty.rb">
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

  # Cells document property.
  class CellsDocumentProperty
    # Returns the name of the property.
    # @return [String]
    attr_accessor :name
    # Gets or sets the value of the property.
    # @return [String]
    attr_accessor :value
    # Indicates whether this property is linked to content
    # @return [String]
    attr_accessor :is_linked_to_content
    # The linked content source.
    # @return [String]
    attr_accessor :source
    # Gets the data type of the property.
    # @return [String]
    attr_accessor :type
    # Returns true if this property does not have a name in the OLE2 storage and a   unique name was generated only for the public API.
    # @return [String]
    attr_accessor :is_generated_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'value' => :'Value',
        :'is_linked_to_content' => :'IsLinkedToContent',
        :'source' => :'Source',
        :'type' => :'Type',
        :'is_generated_name' => :'IsGeneratedName',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'value' => :'String',
        :'is_linked_to_content' => :'String',
        :'source' => :'String',
        :'type' => :'String',
        :'is_generated_name' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.name = attributes[:name] if attributes.key?(:name)
      self.value = attributes[:value] if attributes.key?(:value)
      self.is_linked_to_content = attributes[:is_linked_to_content] if attributes.key?(:is_linked_to_content)
      self.source = attributes[:source] if attributes.key?(:source)
      self.type = attributes[:type] if attributes.key?(:type)
      self.is_generated_name = attributes[:is_generated_name] if attributes.key?(:is_generated_name)
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
