=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Button.rb">
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
require_relative 'shape'

module AsposeCellsCloud

  # Represents the Forms control: Button
  class Button < Shape
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :mso_drawing_type
    # @return [String]
    attr_accessor :auto_shape_type
    # @return [String]
    attr_accessor :placement
    # @return [Integer]
    attr_accessor :upper_left_row
    # @return [Integer]
    attr_accessor :top
    # @return [Integer]
    attr_accessor :upper_left_column
    # @return [Integer]
    attr_accessor :left
    # @return [Integer]
    attr_accessor :lower_right_row
    # @return [Integer]
    attr_accessor :bottom
    # @return [Integer]
    attr_accessor :lower_right_column
    # @return [Integer]
    attr_accessor :right
    # @return [Integer]
    attr_accessor :width
    # @return [Integer]
    attr_accessor :height
    # @return [Integer]
    attr_accessor :x
    # @return [Integer]
    attr_accessor :y
    # @return [Float]
    attr_accessor :rotation_angle
    # @return [String]
    attr_accessor :html_text
    # @return [String]
    attr_accessor :text
    # @return [String]
    attr_accessor :alternative_text
    # @return [String]
    attr_accessor :text_horizontal_alignment
    # @return [String]
    attr_accessor :text_horizontal_overflow
    # @return [String]
    attr_accessor :text_orientation_type
    # @return [String]
    attr_accessor :text_vertical_alignment
    # @return [String]
    attr_accessor :text_vertical_overflow
    # @return [BOOLEAN]
    attr_accessor :is_group
    # @return [BOOLEAN]
    attr_accessor :is_hidden
    # @return [BOOLEAN]
    attr_accessor :is_lock_aspect_ratio
    # @return [BOOLEAN]
    attr_accessor :is_locked
    # @return [BOOLEAN]
    attr_accessor :is_printable
    # @return [BOOLEAN]
    attr_accessor :is_text_wrapped
    # @return [BOOLEAN]
    attr_accessor :is_word_art
    # @return [String]
    attr_accessor :linked_cell
    # @return [Integer]
    attr_accessor :z_order_position
    # @return [Font]
    attr_accessor :font
    # @return [String]
    attr_accessor :hyperlink
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'mso_drawing_type' => :'MsoDrawingType',
        :'auto_shape_type' => :'AutoShapeType',
        :'placement' => :'Placement',
        :'upper_left_row' => :'UpperLeftRow',
        :'top' => :'Top',
        :'upper_left_column' => :'UpperLeftColumn',
        :'left' => :'Left',
        :'lower_right_row' => :'LowerRightRow',
        :'bottom' => :'Bottom',
        :'lower_right_column' => :'LowerRightColumn',
        :'right' => :'Right',
        :'width' => :'Width',
        :'height' => :'Height',
        :'x' => :'X',
        :'y' => :'Y',
        :'rotation_angle' => :'RotationAngle',
        :'html_text' => :'HtmlText',
        :'text' => :'Text',
        :'alternative_text' => :'AlternativeText',
        :'text_horizontal_alignment' => :'TextHorizontalAlignment',
        :'text_horizontal_overflow' => :'TextHorizontalOverflow',
        :'text_orientation_type' => :'TextOrientationType',
        :'text_vertical_alignment' => :'TextVerticalAlignment',
        :'text_vertical_overflow' => :'TextVerticalOverflow',
        :'is_group' => :'IsGroup',
        :'is_hidden' => :'IsHidden',
        :'is_lock_aspect_ratio' => :'IsLockAspectRatio',
        :'is_locked' => :'IsLocked',
        :'is_printable' => :'IsPrintable',
        :'is_text_wrapped' => :'IsTextWrapped',
        :'is_word_art' => :'IsWordArt',
        :'linked_cell' => :'LinkedCell',
        :'z_order_position' => :'ZOrderPosition',
        :'font' => :'Font',
        :'hyperlink' => :'Hyperlink',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'mso_drawing_type' => :'String',
        :'auto_shape_type' => :'String',
        :'placement' => :'String',
        :'upper_left_row' => :'Integer',
        :'top' => :'Integer',
        :'upper_left_column' => :'Integer',
        :'left' => :'Integer',
        :'lower_right_row' => :'Integer',
        :'bottom' => :'Integer',
        :'lower_right_column' => :'Integer',
        :'right' => :'Integer',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'x' => :'Integer',
        :'y' => :'Integer',
        :'rotation_angle' => :'Float',
        :'html_text' => :'String',
        :'text' => :'String',
        :'alternative_text' => :'String',
        :'text_horizontal_alignment' => :'String',
        :'text_horizontal_overflow' => :'String',
        :'text_orientation_type' => :'String',
        :'text_vertical_alignment' => :'String',
        :'text_vertical_overflow' => :'String',
        :'is_group' => :'BOOLEAN',
        :'is_hidden' => :'BOOLEAN',
        :'is_lock_aspect_ratio' => :'BOOLEAN',
        :'is_locked' => :'BOOLEAN',
        :'is_printable' => :'BOOLEAN',
        :'is_text_wrapped' => :'BOOLEAN',
        :'is_word_art' => :'BOOLEAN',
        :'linked_cell' => :'String',
        :'z_order_position' => :'Integer',
        :'font' => :'Font',
        :'hyperlink' => :'String',
        :'link' => :'Link',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.name = attributes[:name] if attributes.key?(:name)
      self.mso_drawing_type = attributes[:mso_drawing_type] if attributes.key?(:mso_drawing_type)
      self.auto_shape_type = attributes[:auto_shape_type] if attributes.key?(:auto_shape_type)
      self.placement = attributes[:placement] if attributes.key?(:placement)
      self.upper_left_row = attributes[:upper_left_row] if attributes.key?(:upper_left_row)
      self.top = attributes[:top] if attributes.key?(:top)
      self.upper_left_column = attributes[:upper_left_column] if attributes.key?(:upper_left_column)
      self.left = attributes[:left] if attributes.key?(:left)
      self.lower_right_row = attributes[:lower_right_row] if attributes.key?(:lower_right_row)
      self.bottom = attributes[:bottom] if attributes.key?(:bottom)
      self.lower_right_column = attributes[:lower_right_column] if attributes.key?(:lower_right_column)
      self.right = attributes[:right] if attributes.key?(:right)
      self.width = attributes[:width] if attributes.key?(:width)
      self.height = attributes[:height] if attributes.key?(:height)
      self.x = attributes[:x] if attributes.key?(:x)
      self.y = attributes[:y] if attributes.key?(:y)
      self.rotation_angle = attributes[:rotation_angle] if attributes.key?(:rotation_angle)
      self.html_text = attributes[:html_text] if attributes.key?(:html_text)
      self.text = attributes[:text] if attributes.key?(:text)
      self.alternative_text = attributes[:alternative_text] if attributes.key?(:alternative_text)
      self.text_horizontal_alignment = attributes[:text_horizontal_alignment] if attributes.key?(:text_horizontal_alignment)
      self.text_horizontal_overflow = attributes[:text_horizontal_overflow] if attributes.key?(:text_horizontal_overflow)
      self.text_orientation_type = attributes[:text_orientation_type] if attributes.key?(:text_orientation_type)
      self.text_vertical_alignment = attributes[:text_vertical_alignment] if attributes.key?(:text_vertical_alignment)
      self.text_vertical_overflow = attributes[:text_vertical_overflow] if attributes.key?(:text_vertical_overflow)
      self.is_group = attributes[:is_group] if attributes.key?(:is_group)
      self.is_hidden = attributes[:is_hidden] if attributes.key?(:is_hidden)
      self.is_lock_aspect_ratio = attributes[:is_lock_aspect_ratio] if attributes.key?(:is_lock_aspect_ratio)
      self.is_locked = attributes[:is_locked] if attributes.key?(:is_locked)
      self.is_printable = attributes[:is_printable] if attributes.key?(:is_printable)
      self.is_text_wrapped = attributes[:is_text_wrapped] if attributes.key?(:is_text_wrapped)
      self.is_word_art = attributes[:is_word_art] if attributes.key?(:is_word_art)
      self.linked_cell = attributes[:linked_cell] if attributes.key?(:linked_cell)
      self.z_order_position = attributes[:z_order_position] if attributes.key?(:z_order_position)
      self.font = attributes[:font] if attributes.key?(:font)
      self.hyperlink = attributes[:hyperlink] if attributes.key?(:hyperlink)
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
