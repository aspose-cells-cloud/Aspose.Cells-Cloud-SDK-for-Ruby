=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="SparklineGroup.rb">
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

  # is organized into sparkline group. A SparklineGroup contains a variable number of sparkline items.             A sparkline group specifies the type, display settings and axis settings for the sparklines.
  class SparklineGroup
    # Indicates whether to show data in hidden rows and columns.
    # @return [BOOLEAN]
    attr_accessor :display_hidden
    # Gets and sets the color of the first point of data in the sparkline group.
    # @return [CellsColor]
    attr_accessor :first_point_color
    # Gets and sets the color of the highest points of data in the sparkline group.
    # @return [CellsColor]
    attr_accessor :high_point_color
    # Gets and sets the color of the horizontal axis in the sparkline group.
    # @return [CellsColor]
    attr_accessor :horizontal_axis_color
    # Represents the range that contains the date values for the sparkline data.
    # @return [String]
    attr_accessor :horizontal_axis_date_range
    # Gets and sets the color of the last point of data in the sparkline group.
    # @return [CellsColor]
    attr_accessor :last_point_color
    # Gets and sets the line weight in each line sparkline in the sparkline group, in the unit of points.
    # @return [Float]
    attr_accessor :line_weight
    # Gets and sets the color of the lowest points of data in the sparkline group.
    # @return [CellsColor]
    attr_accessor :low_point_color
    # Gets and sets the color of points in each line sparkline in the sparkline group.
    # @return [CellsColor]
    attr_accessor :markers_color
    # Gets and sets the color of the negative values on the sparkline group.
    # @return [CellsColor]
    attr_accessor :negative_points_color
    # Indicates how to plot empty cells.
    # @return [String]
    attr_accessor :plot_empty_cells_type
    # Indicates whether the plot data is right to left.
    # @return [BOOLEAN]
    attr_accessor :plot_right_to_left
    # Gets and sets the preset style type of the sparkline group.
    # @return [String]
    attr_accessor :preset_style
    # Gets and sets the color of the sparklines in the sparkline group.
    # @return [CellsColor]
    attr_accessor :series_color
    # Indicates whether to highlight the first point of data in the sparkline group.
    # @return [BOOLEAN]
    attr_accessor :show_first_point
    # Indicates whether to highlight the highest points of data in the sparkline group.
    # @return [BOOLEAN]
    attr_accessor :show_high_point
    # Indicates whether to show the sparkline horizontal axis.             The horizontal axis appears if the sparkline has data that crosses the zero axis.
    # @return [BOOLEAN]
    attr_accessor :show_horizontal_axis
    # Indicates whether to highlight the last point of data in the sparkline group.
    # @return [BOOLEAN]
    attr_accessor :show_last_point
    # Indicates whether to highlight the lowest points of data in the sparkline group.
    # @return [BOOLEAN]
    attr_accessor :show_low_point
    # Indicates whether to highlight each point in each line sparkline in the sparkline group.
    # @return [BOOLEAN]
    attr_accessor :show_markers
    # Indicates whether to highlight the negative values on the sparkline group with a different color or marker.
    # @return [BOOLEAN]
    attr_accessor :show_negative_points
    # Gets the collection of  object.
    # @return [Array<Sparkline>]
    attr_accessor :sparkline_collection
    # Indicates the sparkline type of the sparkline group.
    # @return [String]
    attr_accessor :type
    # Gets and sets the custom maximum value for the vertical axis.
    # @return [Float]
    attr_accessor :vertical_axis_max_value
    # Represents the vertical axis maximum value type.
    # @return [String]
    attr_accessor :vertical_axis_max_value_type
    # Gets and sets the custom minimum value for the vertical axis.
    # @return [Float]
    attr_accessor :vertical_axis_min_value
    # Represents the vertical axis minimum value type.
    # @return [String]
    attr_accessor :vertical_axis_min_value_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'display_hidden' => :'DisplayHidden',
        :'first_point_color' => :'FirstPointColor',
        :'high_point_color' => :'HighPointColor',
        :'horizontal_axis_color' => :'HorizontalAxisColor',
        :'horizontal_axis_date_range' => :'HorizontalAxisDateRange',
        :'last_point_color' => :'LastPointColor',
        :'line_weight' => :'LineWeight',
        :'low_point_color' => :'LowPointColor',
        :'markers_color' => :'MarkersColor',
        :'negative_points_color' => :'NegativePointsColor',
        :'plot_empty_cells_type' => :'PlotEmptyCellsType',
        :'plot_right_to_left' => :'PlotRightToLeft',
        :'preset_style' => :'PresetStyle',
        :'series_color' => :'SeriesColor',
        :'show_first_point' => :'ShowFirstPoint',
        :'show_high_point' => :'ShowHighPoint',
        :'show_horizontal_axis' => :'ShowHorizontalAxis',
        :'show_last_point' => :'ShowLastPoint',
        :'show_low_point' => :'ShowLowPoint',
        :'show_markers' => :'ShowMarkers',
        :'show_negative_points' => :'ShowNegativePoints',
        :'sparkline_collection' => :'SparklineCollection',
        :'type' => :'Type',
        :'vertical_axis_max_value' => :'VerticalAxisMaxValue',
        :'vertical_axis_max_value_type' => :'VerticalAxisMaxValueType',
        :'vertical_axis_min_value' => :'VerticalAxisMinValue',
        :'vertical_axis_min_value_type' => :'VerticalAxisMinValueType',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'display_hidden' => :'BOOLEAN',
        :'first_point_color' => :'CellsColor',
        :'high_point_color' => :'CellsColor',
        :'horizontal_axis_color' => :'CellsColor',
        :'horizontal_axis_date_range' => :'String',
        :'last_point_color' => :'CellsColor',
        :'line_weight' => :'Float',
        :'low_point_color' => :'CellsColor',
        :'markers_color' => :'CellsColor',
        :'negative_points_color' => :'CellsColor',
        :'plot_empty_cells_type' => :'String',
        :'plot_right_to_left' => :'BOOLEAN',
        :'preset_style' => :'String',
        :'series_color' => :'CellsColor',
        :'show_first_point' => :'BOOLEAN',
        :'show_high_point' => :'BOOLEAN',
        :'show_horizontal_axis' => :'BOOLEAN',
        :'show_last_point' => :'BOOLEAN',
        :'show_low_point' => :'BOOLEAN',
        :'show_markers' => :'BOOLEAN',
        :'show_negative_points' => :'BOOLEAN',
        :'sparkline_collection' => :'Array<Sparkline>',
        :'type' => :'String',
        :'vertical_axis_max_value' => :'Float',
        :'vertical_axis_max_value_type' => :'String',
        :'vertical_axis_min_value' => :'Float',
        :'vertical_axis_min_value_type' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.display_hidden = attributes[:display_hidden] if attributes.key?(:display_hidden)
      self.first_point_color = attributes[:first_point_color] if attributes.key?(:first_point_color)
      self.high_point_color = attributes[:high_point_color] if attributes.key?(:high_point_color)
      self.horizontal_axis_color = attributes[:horizontal_axis_color] if attributes.key?(:horizontal_axis_color)
      self.horizontal_axis_date_range = attributes[:horizontal_axis_date_range] if attributes.key?(:horizontal_axis_date_range)
      self.last_point_color = attributes[:last_point_color] if attributes.key?(:last_point_color)
      self.line_weight = attributes[:line_weight] if attributes.key?(:line_weight)
      self.low_point_color = attributes[:low_point_color] if attributes.key?(:low_point_color)
      self.markers_color = attributes[:markers_color] if attributes.key?(:markers_color)
      self.negative_points_color = attributes[:negative_points_color] if attributes.key?(:negative_points_color)
      self.plot_empty_cells_type = attributes[:plot_empty_cells_type] if attributes.key?(:plot_empty_cells_type)
      self.plot_right_to_left = attributes[:plot_right_to_left] if attributes.key?(:plot_right_to_left)
      self.preset_style = attributes[:preset_style] if attributes.key?(:preset_style)
      self.series_color = attributes[:series_color] if attributes.key?(:series_color)
      self.show_first_point = attributes[:show_first_point] if attributes.key?(:show_first_point)
      self.show_high_point = attributes[:show_high_point] if attributes.key?(:show_high_point)
      self.show_horizontal_axis = attributes[:show_horizontal_axis] if attributes.key?(:show_horizontal_axis)
      self.show_last_point = attributes[:show_last_point] if attributes.key?(:show_last_point)
      self.show_low_point = attributes[:show_low_point] if attributes.key?(:show_low_point)
      self.show_markers = attributes[:show_markers] if attributes.key?(:show_markers)
      self.show_negative_points = attributes[:show_negative_points] if attributes.key?(:show_negative_points)
      self.sparkline_collection = attributes[:sparkline_collection] if attributes.key?(:sparkline_collection)
      self.type = attributes[:type] if attributes.key?(:type)
      self.vertical_axis_max_value = attributes[:vertical_axis_max_value] if attributes.key?(:vertical_axis_max_value)
      self.vertical_axis_max_value_type = attributes[:vertical_axis_max_value_type] if attributes.key?(:vertical_axis_max_value_type)
      self.vertical_axis_min_value = attributes[:vertical_axis_min_value] if attributes.key?(:vertical_axis_min_value)
      self.vertical_axis_min_value_type = attributes[:vertical_axis_min_value_type] if attributes.key?(:vertical_axis_min_value_type)
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
