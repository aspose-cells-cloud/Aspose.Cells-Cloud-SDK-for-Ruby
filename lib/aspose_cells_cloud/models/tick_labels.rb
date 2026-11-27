=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="TickLabels.rb">
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

  # Represents the tick-mark labels associated with tick marks on a chart axis.
  class TickLabels < LinkElement
    # True if the text in the object changes font size when the object size changes. The default value is True.
    # @return [BOOLEAN]
    attr_accessor :auto_scale_font
    # Gets and sets the display mode of the background
    # @return [String]
    attr_accessor :background_mode
    # Returns a  object that represents the font of the specified TickLabels object.
    # @return [Font]
    attr_accessor :font
    # Represents the format number for the TickLabels object.
    # @return [Integer]
    attr_accessor :number
    # Represents the format string for the TickLabels object.
    # @return [String]
    attr_accessor :number_format
    # True if the number format is linked to the cells                          (so that the number format changes in the labels when it changes in the cells).
    # @return [BOOLEAN]
    attr_accessor :number_format_linked
    # Gets and sets the distance of labels from the axis.
    # @return [Integer]
    attr_accessor :offset
    # Represents text rotation angle in clockwise.
    # @return [Integer]
    attr_accessor :rotation_angle
    # Represents text reading order.
    # @return [String]
    attr_accessor :text_direction
    # Represents text reading order.
    # @return [String]
    attr_accessor :reading_order
    # Gets and sets the direction of text.
    # @return [String]
    attr_accessor :direction_type
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_scale_font' => :'AutoScaleFont',
        :'background_mode' => :'BackgroundMode',
        :'font' => :'Font',
        :'number' => :'Number',
        :'number_format' => :'NumberFormat',
        :'number_format_linked' => :'NumberFormatLinked',
        :'offset' => :'Offset',
        :'rotation_angle' => :'RotationAngle',
        :'text_direction' => :'TextDirection',
        :'reading_order' => :'ReadingOrder',
        :'direction_type' => :'DirectionType',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_scale_font' => :'BOOLEAN',
        :'background_mode' => :'String',
        :'font' => :'Font',
        :'number' => :'Integer',
        :'number_format' => :'String',
        :'number_format_linked' => :'BOOLEAN',
        :'offset' => :'Integer',
        :'rotation_angle' => :'Integer',
        :'text_direction' => :'String',
        :'reading_order' => :'String',
        :'direction_type' => :'String',
        :'link' => :'Link',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.auto_scale_font = attributes[:auto_scale_font] if attributes.key?(:auto_scale_font)
      self.background_mode = attributes[:background_mode] if attributes.key?(:background_mode)
      self.font = attributes[:font] if attributes.key?(:font)
      self.number = attributes[:number] if attributes.key?(:number)
      self.number_format = attributes[:number_format] if attributes.key?(:number_format)
      self.number_format_linked = attributes[:number_format_linked] if attributes.key?(:number_format_linked)
      self.offset = attributes[:offset] if attributes.key?(:offset)
      self.rotation_angle = attributes[:rotation_angle] if attributes.key?(:rotation_angle)
      self.text_direction = attributes[:text_direction] if attributes.key?(:text_direction)
      self.reading_order = attributes[:reading_order] if attributes.key?(:reading_order)
      self.direction_type = attributes[:direction_type] if attributes.key?(:direction_type)
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
