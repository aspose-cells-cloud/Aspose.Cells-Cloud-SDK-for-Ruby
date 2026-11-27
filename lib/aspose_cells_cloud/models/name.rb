=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Name.rb">
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

  # Represents a defined name for a range of cells.
  class Name < LinkElement
    # Gets and sets the comment of the name.                         Only applies for Excel 2007.
    # @return [String]
    attr_accessor :comment
    # Property Summary: WorksheetIndex is an optional integer property marked with the XmlElement attribute "worksheetindex".
    # @return [Integer]
    attr_accessor :worksheet_index
    # Indicates whether this name is referred by other formulas.
    # @return [BOOLEAN]
    attr_accessor :is_referred
    # Indicates whether the name is visible.
    # @return [BOOLEAN]
    attr_accessor :is_visible
    # Gets or sets a R1C1 reference of the .
    # @return [String]
    attr_accessor :r1_c1_refers_to
    # Returns or sets the formula that the name is defined to refer to, beginning with an equal sign.
    # @return [String]
    attr_accessor :refers_to
    # Gets the name text of the object.
    # @return [String]
    attr_accessor :text
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'comment' => :'Comment',
        :'worksheet_index' => :'WorksheetIndex',
        :'is_referred' => :'IsReferred',
        :'is_visible' => :'IsVisible',
        :'r1_c1_refers_to' => :'R1C1RefersTo',
        :'refers_to' => :'RefersTo',
        :'text' => :'Text',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'comment' => :'String',
        :'worksheet_index' => :'Integer',
        :'is_referred' => :'BOOLEAN',
        :'is_visible' => :'BOOLEAN',
        :'r1_c1_refers_to' => :'String',
        :'refers_to' => :'String',
        :'text' => :'String',
        :'link' => :'Link',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.comment = attributes[:comment] if attributes.key?(:comment)
      self.worksheet_index = attributes[:worksheet_index] if attributes.key?(:worksheet_index)
      self.is_referred = attributes[:is_referred] if attributes.key?(:is_referred)
      self.is_visible = attributes[:is_visible] if attributes.key?(:is_visible)
      self.r1_c1_refers_to = attributes[:r1_c1_refers_to] if attributes.key?(:r1_c1_refers_to)
      self.refers_to = attributes[:refers_to] if attributes.key?(:refers_to)
      self.text = attributes[:text] if attributes.key?(:text)
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
