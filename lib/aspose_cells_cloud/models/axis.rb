=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Axis.rb">
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

  # Encapsulates the object that represents an axis of chart.
  class Axis < LinkElement
    # Gets the .
    # @return [Area]
    attr_accessor :area
    # Represents if the value axis crosses the category axis between categories.
    # @return [BOOLEAN]
    attr_accessor :axis_between_categories
    # Gets the appearance of an Axis.
    # @return [Line]
    attr_accessor :axis_line
    # Represents the base unit scale for the category axis.
    # @return [String]
    attr_accessor :base_unit_scale
    # Represents the category axis type.
    # @return [String]
    attr_accessor :category_type
    # Represents the point on the value axis where the category axis crosses it.
    # @return [Float]
    attr_accessor :cross_at
    # Represents the  on the specified axis where the other axis crosses.
    # @return [String]
    attr_accessor :cross_type
    # Represents the unit label for the specified axis.
    # @return [String]
    attr_accessor :display_unit
    # Represents a unit label on an axis in the specified chart.                          Unit labels are useful for charting large values— for example, in the millions or billions.
    # @return [DisplayUnitLabel]
    attr_accessor :display_unit_label
    # Indicates whether the labels shall be shown as multi level.
    # @return [BOOLEAN]
    attr_accessor :has_multi_level_labels
    # Indicates whether the major unit of the axis is automatically assigned.
    # @return [BOOLEAN]
    attr_accessor :is_automatic_major_unit
    # Indicates whether the max value is automatically assigned.
    # @return [BOOLEAN]
    attr_accessor :is_automatic_max_value
    # Indicates whether the minor unit of the axis is automatically assigned.
    # @return [BOOLEAN]
    attr_accessor :is_automatic_minor_unit
    # Indicates whether the min value is automatically assigned.
    # @return [BOOLEAN]
    attr_accessor :is_automatic_min_value
    # Represents if the display unit label is shown on the specified axis.
    # @return [BOOLEAN]
    attr_accessor :is_display_unit_label_shown
    # Represents if the value axis scale type is logarithmic or not.
    # @return [BOOLEAN]
    attr_accessor :is_logarithmic
    # Represents if Microsoft Excel plots data points from last to first.
    # @return [BOOLEAN]
    attr_accessor :is_plot_order_reversed
    # Represents if the axis is visible.
    # @return [BOOLEAN]
    attr_accessor :is_visible
    # Represents the logarithmic base. Default value is 10.Only applies for Excel2007.
    # @return [Float]
    attr_accessor :log_base
    # Represents major gridlines on a chart axis.
    # @return [Line]
    attr_accessor :major_grid_lines
    # Represents the type of major tick mark for the specified axis.
    # @return [String]
    attr_accessor :major_tick_mark
    # Represents the major units for the axis.
    # @return [Float]
    attr_accessor :major_unit
    # Represents the major unit scale for the category axis.
    # @return [String]
    attr_accessor :major_unit_scale
    # Represents the maximum value on the value axis.
    # @return [Float]
    attr_accessor :max_value
    # Represents minor gridlines on a chart axis.
    # @return [Line]
    attr_accessor :minor_grid_lines
    # Represents the type of minor tick mark for the specified axis.
    # @return [String]
    attr_accessor :minor_tick_mark
    # Represents the minor units for the axis.
    # @return [Float]
    attr_accessor :minor_unit
    # Represents the major unit scale for the category axis.
    # @return [String]
    attr_accessor :minor_unit_scale
    # Represents the minimum value on the value axis.
    # @return [Float]
    attr_accessor :min_value
    # Represents the position of tick-mark labels on the specified axis.
    # @return [String]
    attr_accessor :tick_label_position
    # Returns a  object that represents the tick-mark labels for the specified axis.
    # @return [TickLabels]
    attr_accessor :tick_labels
    # Represents the number of categories or series between tick-mark labels. Applies only to category and series axes.
    # @return [Integer]
    attr_accessor :tick_label_spacing
    # Returns or sets the number of categories or series between tick marks. Applies only to category and series axes.
    # @return [Integer]
    attr_accessor :tick_mark_spacing
    # Gets the axis' title.
    # @return [Title]
    attr_accessor :title
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'area' => :'Area',
        :'axis_between_categories' => :'AxisBetweenCategories',
        :'axis_line' => :'AxisLine',
        :'base_unit_scale' => :'BaseUnitScale',
        :'category_type' => :'CategoryType',
        :'cross_at' => :'CrossAt',
        :'cross_type' => :'CrossType',
        :'display_unit' => :'DisplayUnit',
        :'display_unit_label' => :'DisplayUnitLabel',
        :'has_multi_level_labels' => :'HasMultiLevelLabels',
        :'is_automatic_major_unit' => :'IsAutomaticMajorUnit',
        :'is_automatic_max_value' => :'IsAutomaticMaxValue',
        :'is_automatic_minor_unit' => :'IsAutomaticMinorUnit',
        :'is_automatic_min_value' => :'IsAutomaticMinValue',
        :'is_display_unit_label_shown' => :'IsDisplayUnitLabelShown',
        :'is_logarithmic' => :'IsLogarithmic',
        :'is_plot_order_reversed' => :'IsPlotOrderReversed',
        :'is_visible' => :'IsVisible',
        :'log_base' => :'LogBase',
        :'major_grid_lines' => :'MajorGridLines',
        :'major_tick_mark' => :'MajorTickMark',
        :'major_unit' => :'MajorUnit',
        :'major_unit_scale' => :'MajorUnitScale',
        :'max_value' => :'MaxValue',
        :'minor_grid_lines' => :'MinorGridLines',
        :'minor_tick_mark' => :'MinorTickMark',
        :'minor_unit' => :'MinorUnit',
        :'minor_unit_scale' => :'MinorUnitScale',
        :'min_value' => :'MinValue',
        :'tick_label_position' => :'TickLabelPosition',
        :'tick_labels' => :'TickLabels',
        :'tick_label_spacing' => :'TickLabelSpacing',
        :'tick_mark_spacing' => :'TickMarkSpacing',
        :'title' => :'Title',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'area' => :'Area',
        :'axis_between_categories' => :'BOOLEAN',
        :'axis_line' => :'Line',
        :'base_unit_scale' => :'String',
        :'category_type' => :'String',
        :'cross_at' => :'Float',
        :'cross_type' => :'String',
        :'display_unit' => :'String',
        :'display_unit_label' => :'DisplayUnitLabel',
        :'has_multi_level_labels' => :'BOOLEAN',
        :'is_automatic_major_unit' => :'BOOLEAN',
        :'is_automatic_max_value' => :'BOOLEAN',
        :'is_automatic_minor_unit' => :'BOOLEAN',
        :'is_automatic_min_value' => :'BOOLEAN',
        :'is_display_unit_label_shown' => :'BOOLEAN',
        :'is_logarithmic' => :'BOOLEAN',
        :'is_plot_order_reversed' => :'BOOLEAN',
        :'is_visible' => :'BOOLEAN',
        :'log_base' => :'Float',
        :'major_grid_lines' => :'Line',
        :'major_tick_mark' => :'String',
        :'major_unit' => :'Float',
        :'major_unit_scale' => :'String',
        :'max_value' => :'Float',
        :'minor_grid_lines' => :'Line',
        :'minor_tick_mark' => :'String',
        :'minor_unit' => :'Float',
        :'minor_unit_scale' => :'String',
        :'min_value' => :'Float',
        :'tick_label_position' => :'String',
        :'tick_labels' => :'TickLabels',
        :'tick_label_spacing' => :'Integer',
        :'tick_mark_spacing' => :'Integer',
        :'title' => :'Title',
        :'link' => :'Link',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.area = attributes[:area] if attributes.key?(:area)
      self.axis_between_categories = attributes[:axis_between_categories] if attributes.key?(:axis_between_categories)
      self.axis_line = attributes[:axis_line] if attributes.key?(:axis_line)
      self.base_unit_scale = attributes[:base_unit_scale] if attributes.key?(:base_unit_scale)
      self.category_type = attributes[:category_type] if attributes.key?(:category_type)
      self.cross_at = attributes[:cross_at] if attributes.key?(:cross_at)
      self.cross_type = attributes[:cross_type] if attributes.key?(:cross_type)
      self.display_unit = attributes[:display_unit] if attributes.key?(:display_unit)
      self.display_unit_label = attributes[:display_unit_label] if attributes.key?(:display_unit_label)
      self.has_multi_level_labels = attributes[:has_multi_level_labels] if attributes.key?(:has_multi_level_labels)
      self.is_automatic_major_unit = attributes[:is_automatic_major_unit] if attributes.key?(:is_automatic_major_unit)
      self.is_automatic_max_value = attributes[:is_automatic_max_value] if attributes.key?(:is_automatic_max_value)
      self.is_automatic_minor_unit = attributes[:is_automatic_minor_unit] if attributes.key?(:is_automatic_minor_unit)
      self.is_automatic_min_value = attributes[:is_automatic_min_value] if attributes.key?(:is_automatic_min_value)
      self.is_display_unit_label_shown = attributes[:is_display_unit_label_shown] if attributes.key?(:is_display_unit_label_shown)
      self.is_logarithmic = attributes[:is_logarithmic] if attributes.key?(:is_logarithmic)
      self.is_plot_order_reversed = attributes[:is_plot_order_reversed] if attributes.key?(:is_plot_order_reversed)
      self.is_visible = attributes[:is_visible] if attributes.key?(:is_visible)
      self.log_base = attributes[:log_base] if attributes.key?(:log_base)
      self.major_grid_lines = attributes[:major_grid_lines] if attributes.key?(:major_grid_lines)
      self.major_tick_mark = attributes[:major_tick_mark] if attributes.key?(:major_tick_mark)
      self.major_unit = attributes[:major_unit] if attributes.key?(:major_unit)
      self.major_unit_scale = attributes[:major_unit_scale] if attributes.key?(:major_unit_scale)
      self.max_value = attributes[:max_value] if attributes.key?(:max_value)
      self.minor_grid_lines = attributes[:minor_grid_lines] if attributes.key?(:minor_grid_lines)
      self.minor_tick_mark = attributes[:minor_tick_mark] if attributes.key?(:minor_tick_mark)
      self.minor_unit = attributes[:minor_unit] if attributes.key?(:minor_unit)
      self.minor_unit_scale = attributes[:minor_unit_scale] if attributes.key?(:minor_unit_scale)
      self.min_value = attributes[:min_value] if attributes.key?(:min_value)
      self.tick_label_position = attributes[:tick_label_position] if attributes.key?(:tick_label_position)
      self.tick_labels = attributes[:tick_labels] if attributes.key?(:tick_labels)
      self.tick_label_spacing = attributes[:tick_label_spacing] if attributes.key?(:tick_label_spacing)
      self.tick_mark_spacing = attributes[:tick_mark_spacing] if attributes.key?(:tick_mark_spacing)
      self.title = attributes[:title] if attributes.key?(:title)
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
