=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="LineFormat.rb">
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
require_relative 'fill_format'

module AsposeCellsCloud

  # Represents all setting of the line.
  class LineFormat < FillFormat
    # Gets and sets the begin arrow length type of the line.
    # @return [String]
    attr_accessor :begin_arrowhead_length
    # Gets and sets the begin arrow type of the line.
    # @return [String]
    attr_accessor :begin_arrowhead_style
    # Gets and sets the begin arrow width type of the line.
    # @return [String]
    attr_accessor :begin_arrowhead_width
    # Specifies the ending caps.
    # @return [String]
    attr_accessor :cap_type
    # Specifies the line compound type.
    # @return [String]
    attr_accessor :compound_type
    # Specifies the line dash type.
    # @return [String]
    attr_accessor :dash_style
    # Gets and sets the end arrow length type of the line.
    # @return [String]
    attr_accessor :end_arrowhead_length
    # Gets and sets the end arrow type of the line.
    # @return [String]
    attr_accessor :end_arrowhead_style
    # Gets and sets the end arrow width type of the line.
    # @return [String]
    attr_accessor :end_arrowhead_width
    # Specifies the line join type.
    # @return [String]
    attr_accessor :join_type
    # Gets or sets the weight of the line in unit of points.
    # @return [Float]
    attr_accessor :weight
    # @return [String]
    attr_accessor :type
    # @return [SolidFill]
    attr_accessor :solid_fill
    # @return [PatternFill]
    attr_accessor :pattern_fill
    # @return [TextureFill]
    attr_accessor :texture_fill
    # @return [GradientFill]
    attr_accessor :gradient_fill
    # @return [String]
    attr_accessor :image_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'begin_arrowhead_length' => :'BeginArrowheadLength',
        :'begin_arrowhead_style' => :'BeginArrowheadStyle',
        :'begin_arrowhead_width' => :'BeginArrowheadWidth',
        :'cap_type' => :'CapType',
        :'compound_type' => :'CompoundType',
        :'dash_style' => :'DashStyle',
        :'end_arrowhead_length' => :'EndArrowheadLength',
        :'end_arrowhead_style' => :'EndArrowheadStyle',
        :'end_arrowhead_width' => :'EndArrowheadWidth',
        :'join_type' => :'JoinType',
        :'weight' => :'Weight',
        :'type' => :'Type',
        :'solid_fill' => :'SolidFill',
        :'pattern_fill' => :'PatternFill',
        :'texture_fill' => :'TextureFill',
        :'gradient_fill' => :'GradientFill',
        :'image_data' => :'ImageData',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'begin_arrowhead_length' => :'String',
        :'begin_arrowhead_style' => :'String',
        :'begin_arrowhead_width' => :'String',
        :'cap_type' => :'String',
        :'compound_type' => :'String',
        :'dash_style' => :'String',
        :'end_arrowhead_length' => :'String',
        :'end_arrowhead_style' => :'String',
        :'end_arrowhead_width' => :'String',
        :'join_type' => :'String',
        :'weight' => :'Float',
        :'type' => :'String',
        :'solid_fill' => :'SolidFill',
        :'pattern_fill' => :'PatternFill',
        :'texture_fill' => :'TextureFill',
        :'gradient_fill' => :'GradientFill',
        :'image_data' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.begin_arrowhead_length = attributes[:begin_arrowhead_length] if attributes.key?(:begin_arrowhead_length)
      self.begin_arrowhead_style = attributes[:begin_arrowhead_style] if attributes.key?(:begin_arrowhead_style)
      self.begin_arrowhead_width = attributes[:begin_arrowhead_width] if attributes.key?(:begin_arrowhead_width)
      self.cap_type = attributes[:cap_type] if attributes.key?(:cap_type)
      self.compound_type = attributes[:compound_type] if attributes.key?(:compound_type)
      self.dash_style = attributes[:dash_style] if attributes.key?(:dash_style)
      self.end_arrowhead_length = attributes[:end_arrowhead_length] if attributes.key?(:end_arrowhead_length)
      self.end_arrowhead_style = attributes[:end_arrowhead_style] if attributes.key?(:end_arrowhead_style)
      self.end_arrowhead_width = attributes[:end_arrowhead_width] if attributes.key?(:end_arrowhead_width)
      self.join_type = attributes[:join_type] if attributes.key?(:join_type)
      self.weight = attributes[:weight] if attributes.key?(:weight)
      self.type = attributes[:type] if attributes.key?(:type)
      self.solid_fill = attributes[:solid_fill] if attributes.key?(:solid_fill)
      self.pattern_fill = attributes[:pattern_fill] if attributes.key?(:pattern_fill)
      self.texture_fill = attributes[:texture_fill] if attributes.key?(:texture_fill)
      self.gradient_fill = attributes[:gradient_fill] if attributes.key?(:gradient_fill)
      self.image_data = attributes[:image_data] if attributes.key?(:image_data)
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
