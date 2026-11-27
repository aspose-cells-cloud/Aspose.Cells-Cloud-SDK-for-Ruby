=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Comment.rb">
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

  # Encapsulates the object that represents a cell comment.
  class Comment < LinkElement
    # Property: CellName attribute with XmlElement tag in the class.
    # @return [String]
    attr_accessor :cell_name
    # Gets and sets Name of the original comment author
    # @return [String]
    attr_accessor :author
    # Gets and sets the html string which contains data and some formats in this comment.
    # @return [String]
    attr_accessor :html_note
    # Represents the content of comment.
    # @return [String]
    attr_accessor :note
    # Indicates if size of comment is adjusted automatically according to its content.
    # @return [BOOLEAN]
    attr_accessor :auto_size
    # Represents if the comment is visible or not.
    # @return [BOOLEAN]
    attr_accessor :is_visible
    # Represents the width of the comment, in unit of pixels.
    # @return [Integer]
    attr_accessor :width
    # Represents the Height of the comment, in unit of pixels.
    # @return [Integer]
    attr_accessor :height
    # Gets and sets the text horizontal alignment type of the comment.
    # @return [String]
    attr_accessor :text_horizontal_alignment
    # Gets and sets the text orientation type of the comment.
    # @return [String]
    attr_accessor :text_orientation_type
    # Gets and sets the text vertical alignment type of the comment.
    # @return [String]
    attr_accessor :text_vertical_alignment
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cell_name' => :'CellName',
        :'author' => :'Author',
        :'html_note' => :'HtmlNote',
        :'note' => :'Note',
        :'auto_size' => :'AutoSize',
        :'is_visible' => :'IsVisible',
        :'width' => :'Width',
        :'height' => :'Height',
        :'text_horizontal_alignment' => :'TextHorizontalAlignment',
        :'text_orientation_type' => :'TextOrientationType',
        :'text_vertical_alignment' => :'TextVerticalAlignment',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'cell_name' => :'String',
        :'author' => :'String',
        :'html_note' => :'String',
        :'note' => :'String',
        :'auto_size' => :'BOOLEAN',
        :'is_visible' => :'BOOLEAN',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'text_horizontal_alignment' => :'String',
        :'text_orientation_type' => :'String',
        :'text_vertical_alignment' => :'String',
        :'link' => :'Link',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.cell_name = attributes[:cell_name] if attributes.key?(:cell_name)
      self.author = attributes[:author] if attributes.key?(:author)
      self.html_note = attributes[:html_note] if attributes.key?(:html_note)
      self.note = attributes[:note] if attributes.key?(:note)
      self.auto_size = attributes[:auto_size] if attributes.key?(:auto_size)
      self.is_visible = attributes[:is_visible] if attributes.key?(:is_visible)
      self.width = attributes[:width] if attributes.key?(:width)
      self.height = attributes[:height] if attributes.key?(:height)
      self.text_horizontal_alignment = attributes[:text_horizontal_alignment] if attributes.key?(:text_horizontal_alignment)
      self.text_orientation_type = attributes[:text_orientation_type] if attributes.key?(:text_orientation_type)
      self.text_vertical_alignment = attributes[:text_vertical_alignment] if attributes.key?(:text_vertical_alignment)
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
