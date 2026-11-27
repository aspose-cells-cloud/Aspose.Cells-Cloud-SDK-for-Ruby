=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Row.rb">
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

  # Represents a single row in a worksheet.
  class Row < LinkElement
    # Gets the group level of the row.
    # @return [Integer]
    attr_accessor :group_level
    # Gets and sets the row height in unit of Points.
    # @return [Float]
    attr_accessor :height
    # Gets the index of this row.
    # @return [Integer]
    attr_accessor :index
    # Indicates whether the row contains any data
    # @return [BOOLEAN]
    attr_accessor :is_blank
    # Indicates that row height and default font height matches.
    # @return [BOOLEAN]
    attr_accessor :is_height_matched
    # Indicates whether the row is hidden.
    # @return [BOOLEAN]
    attr_accessor :is_hidden
    # Represents the style of this row.
    # @return [LinkElement]
    attr_accessor :style
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'group_level' => :'GroupLevel',
        :'height' => :'Height',
        :'index' => :'Index',
        :'is_blank' => :'IsBlank',
        :'is_height_matched' => :'IsHeightMatched',
        :'is_hidden' => :'IsHidden',
        :'style' => :'Style',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'group_level' => :'Integer',
        :'height' => :'Float',
        :'index' => :'Integer',
        :'is_blank' => :'BOOLEAN',
        :'is_height_matched' => :'BOOLEAN',
        :'is_hidden' => :'BOOLEAN',
        :'style' => :'LinkElement',
        :'link' => :'Link',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.group_level = attributes[:group_level] if attributes.key?(:group_level)
      self.height = attributes[:height] if attributes.key?(:height)
      self.index = attributes[:index] if attributes.key?(:index)
      self.is_blank = attributes[:is_blank] if attributes.key?(:is_blank)
      self.is_height_matched = attributes[:is_height_matched] if attributes.key?(:is_height_matched)
      self.is_hidden = attributes[:is_hidden] if attributes.key?(:is_hidden)
      self.style = attributes[:style] if attributes.key?(:style)
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
