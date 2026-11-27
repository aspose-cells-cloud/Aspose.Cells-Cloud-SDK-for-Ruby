=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ErrorBar.rb">
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
require_relative 'line'

module AsposeCellsCloud

  # Represents error bar of data series.
  class ErrorBar < Line
    # A property named "Link" of type "Link" that can be accessed and modified.
    # @return [Link]
    attr_accessor :link
    # Represents amount of error bar.                          The amount must be greater than or equal to zero.
    # @return [Float]
    attr_accessor :amount
    # Represents error bar display type.
    # @return [String]
    attr_accessor :display_type
    # Represents negative error amount when error bar type is Custom.
    # @return [String]
    attr_accessor :minus_value
    # Represents positive error amount when error bar type is Custom.
    # @return [String]
    attr_accessor :plus_value
    # Indicates if formatting error bars with a T-top.
    # @return [BOOLEAN]
    attr_accessor :show_marker_t_top
    # Represents error bar amount type.
    # @return [String]
    attr_accessor :type
    # @return [String]
    attr_accessor :begin_arrow_length
    # @return [String]
    attr_accessor :begin_arrow_width
    # @return [String]
    attr_accessor :begin_type
    # @return [String]
    attr_accessor :cap_type
    # @return [Color]
    attr_accessor :color
    # @return [String]
    attr_accessor :compound_type
    # @return [String]
    attr_accessor :dash_type
    # @return [String]
    attr_accessor :end_arrow_length
    # @return [String]
    attr_accessor :end_arrow_width
    # @return [String]
    attr_accessor :end_type
    # @return [GradientFill]
    attr_accessor :gradient_fill
    # @return [BOOLEAN]
    attr_accessor :is_auto
    # @return [BOOLEAN]
    attr_accessor :is_automatic_color
    # @return [BOOLEAN]
    attr_accessor :is_visible
    # @return [String]
    attr_accessor :join_type
    # @return [String]
    attr_accessor :style
    # @return [Float]
    attr_accessor :transparency
    # @return [String]
    attr_accessor :weight
    # @return [Float]
    attr_accessor :weight_pt

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'link' => :'Link',
        :'amount' => :'Amount',
        :'display_type' => :'DisplayType',
        :'minus_value' => :'MinusValue',
        :'plus_value' => :'PlusValue',
        :'show_marker_t_top' => :'ShowMarkerTTop',
        :'type' => :'Type',
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
        :'link' => :'Link',
        :'amount' => :'Float',
        :'display_type' => :'String',
        :'minus_value' => :'String',
        :'plus_value' => :'String',
        :'show_marker_t_top' => :'BOOLEAN',
        :'type' => :'String',
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
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.link = attributes[:link] if attributes.key?(:link)
      self.amount = attributes[:amount] if attributes.key?(:amount)
      self.display_type = attributes[:display_type] if attributes.key?(:display_type)
      self.minus_value = attributes[:minus_value] if attributes.key?(:minus_value)
      self.plus_value = attributes[:plus_value] if attributes.key?(:plus_value)
      self.show_marker_t_top = attributes[:show_marker_t_top] if attributes.key?(:show_marker_t_top)
      self.type = attributes[:type] if attributes.key?(:type)
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
