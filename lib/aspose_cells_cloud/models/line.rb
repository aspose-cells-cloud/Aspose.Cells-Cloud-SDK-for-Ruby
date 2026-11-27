=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Line.rb">
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

  # Encapsulates the object that represents the line format.
  class Line
    # Specifies the length of the arrowhead for the begin of a line.
    # @return [String]
    attr_accessor :begin_arrow_length
    # Specifies the width of the arrowhead for the begin of a line.
    # @return [String]
    attr_accessor :begin_arrow_width
    # Specifies an arrowhead for the begin of a line.
    # @return [String]
    attr_accessor :begin_type
    # Specifies the ending caps.
    # @return [String]
    attr_accessor :cap_type
    # Represents the  of the line.
    # @return [Color]
    attr_accessor :color
    # Specifies the compound line type
    # @return [String]
    attr_accessor :compound_type
    # Specifies the dash line type
    # @return [String]
    attr_accessor :dash_type
    # Specifies the length of the arrowhead for the end of a line.
    # @return [String]
    attr_accessor :end_arrow_length
    # Specifies the width of the arrowhead for the end of a line.
    # @return [String]
    attr_accessor :end_arrow_width
    # Specifies an arrowhead for the end of a line.
    # @return [String]
    attr_accessor :end_type
    # Represents gradient fill.
    # @return [GradientFill]
    attr_accessor :gradient_fill
    # Indicates whether this line style is auto assigned.
    # @return [BOOLEAN]
    attr_accessor :is_auto
    # Indicates whether the color of line is automatic assigned.
    # @return [BOOLEAN]
    attr_accessor :is_automatic_color
    # Represents whether the line is visible.
    # @return [BOOLEAN]
    attr_accessor :is_visible
    # Specifies the joining caps.
    # @return [String]
    attr_accessor :join_type
    # Represents the style of the line.
    # @return [String]
    attr_accessor :style
    # Returns or sets the degree of transparency of the line as a value from 0.0 (opaque) through 1.0 (clear).
    # @return [Float]
    attr_accessor :transparency
    # Gets or sets the  of the line.
    # @return [String]
    attr_accessor :weight
    # Gets or sets the weight of the line in unit of points.
    # @return [Float]
    attr_accessor :weight_pt

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'begin_arrow_length' => :'BeginArrowLength',
        :'begin_arrow_width' => :'BeginArrowWidth',
        :'begin_type' => :'BeginType',
        :'cap_type' => :'CapType',
        :'color' => :'Color',
        :'compound_type' => :'CompoundType',
        :'dash_type' => :'DashType',
        :'end_arrow_length' => :'EndArrowLength',
        :'end_arrow_width' => :'EndArrowWidth',
        :'end_type' => :'EndType',
        :'gradient_fill' => :'GradientFill',
        :'is_auto' => :'IsAuto',
        :'is_automatic_color' => :'IsAutomaticColor',
        :'is_visible' => :'IsVisible',
        :'join_type' => :'JoinType',
        :'style' => :'Style',
        :'transparency' => :'Transparency',
        :'weight' => :'Weight',
        :'weight_pt' => :'WeightPt',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'begin_arrow_length' => :'String',
        :'begin_arrow_width' => :'String',
        :'begin_type' => :'String',
        :'cap_type' => :'String',
        :'color' => :'Color',
        :'compound_type' => :'String',
        :'dash_type' => :'String',
        :'end_arrow_length' => :'String',
        :'end_arrow_width' => :'String',
        :'end_type' => :'String',
        :'gradient_fill' => :'GradientFill',
        :'is_auto' => :'BOOLEAN',
        :'is_automatic_color' => :'BOOLEAN',
        :'is_visible' => :'BOOLEAN',
        :'join_type' => :'String',
        :'style' => :'String',
        :'transparency' => :'Float',
        :'weight' => :'String',
        :'weight_pt' => :'Float',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.begin_arrow_length = attributes[:begin_arrow_length] if attributes.key?(:begin_arrow_length)
      self.begin_arrow_width = attributes[:begin_arrow_width] if attributes.key?(:begin_arrow_width)
      self.begin_type = attributes[:begin_type] if attributes.key?(:begin_type)
      self.cap_type = attributes[:cap_type] if attributes.key?(:cap_type)
      self.color = attributes[:color] if attributes.key?(:color)
      self.compound_type = attributes[:compound_type] if attributes.key?(:compound_type)
      self.dash_type = attributes[:dash_type] if attributes.key?(:dash_type)
      self.end_arrow_length = attributes[:end_arrow_length] if attributes.key?(:end_arrow_length)
      self.end_arrow_width = attributes[:end_arrow_width] if attributes.key?(:end_arrow_width)
      self.end_type = attributes[:end_type] if attributes.key?(:end_type)
      self.gradient_fill = attributes[:gradient_fill] if attributes.key?(:gradient_fill)
      self.is_auto = attributes[:is_auto] if attributes.key?(:is_auto)
      self.is_automatic_color = attributes[:is_automatic_color] if attributes.key?(:is_automatic_color)
      self.is_visible = attributes[:is_visible] if attributes.key?(:is_visible)
      self.join_type = attributes[:join_type] if attributes.key?(:join_type)
      self.style = attributes[:style] if attributes.key?(:style)
      self.transparency = attributes[:transparency] if attributes.key?(:transparency)
      self.weight = attributes[:weight] if attributes.key?(:weight)
      self.weight_pt = attributes[:weight_pt] if attributes.key?(:weight_pt)
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
