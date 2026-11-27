=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Series.rb">
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

  # Encapsulates the object that represents a single data series in a chart.
  class Series < LinkElement
    # Represents the background area of Series object.
    # @return [Area]
    attr_accessor :area
    # Gets or sets the 3D shape type used with the 3-D bar or column chart.
    # @return [String]
    attr_accessor :bar3_d_shape_type
    # Represents border of Series object.
    # @return [Line]
    attr_accessor :border
    # Gets or sets the scale factor for bubbles in the specified chart group.                          It can be an integer value from 0 (zero) to 300,                          corresponding to a percentage of the default size.                         Applies only to bubble charts.
    # @return [Integer]
    attr_accessor :bubble_scale
    # Gets or sets the bubble sizes values of the chart series.
    # @return [String]
    attr_accessor :bubble_sizes
    # Gets the number of the data values.
    # @return [Integer]
    attr_accessor :count_of_data_values
    # Represents the DataLabels object for the specified ASeries.
    # @return [DataLabels]
    attr_accessor :data_labels
    # Gets the series's name that displays on the chart graph.
    # @return [String]
    attr_accessor :display_name
    # Returns or sets the size of the hole in a doughnut chart group.                          The hole size is expressed as a percentage of the chart size, between 10 and 90 percent.
    # @return [Integer]
    attr_accessor :doughnut_hole_size
    # Returns a  object that represents the down bars on a line chart.                         Applies only to line charts.
    # @return [DropBars]
    attr_accessor :down_bars
    # Returns a  object that represents the drop lines for a series on the line chart or area chart.                         Applies only to line chart or area charts.
    # @return [Line]
    attr_accessor :drop_lines
    # The distance of an open pie slice from the center of the pie chart is expressed as a percentage of the pie diameter.
    # @return [Integer]
    attr_accessor :explosion
    # Gets or sets the angle of the first pie-chart or doughnut-chart slice, in degrees (clockwise from vertical).                          Applies only to pie, 3-D pie, and doughnut charts, 0 to 360.
    # @return [Integer]
    attr_accessor :first_slice_angle
    # Returns or sets the space between bar or column clusters, as a percentage of the bar or column width.                         The value of this property must be between 0 and 500.
    # @return [Integer]
    attr_accessor :gap_width
    # True if the series has a three-dimensional appearance.                          Applies only to bubble charts.
    # @return [BOOLEAN]
    attr_accessor :has3_d_effect
    # True if the chart has drop lines.                         Applies only to line chart or area charts.
    # @return [BOOLEAN]
    attr_accessor :has_drop_lines
    # True if the line chart has high-low lines.                           Applies only to line charts.
    # @return [BOOLEAN]
    attr_accessor :has_hi_lo_lines
    # True if the series has leader lines.
    # @return [BOOLEAN]
    attr_accessor :has_leader_lines
    # True if a radar chart has category axis labels. Applies only to radar charts.
    # @return [BOOLEAN]
    attr_accessor :has_radar_axis_labels
    # True if a stacked column chart or bar chart has series lines or                         if a Pie of Pie chart or Bar of Pie chart has connector lines between the two sections.                          Applies only to stacked column charts, bar charts, Pie of Pie charts, or Bar of Pie charts.
    # @return [BOOLEAN]
    attr_accessor :has_series_lines
    # True if a line chart has up and down bars.                         Applies only to line charts.
    # @return [BOOLEAN]
    attr_accessor :has_up_down_bars
    # Returns a HiLoLines object that represents the high-low lines for a series on a line chart.                          Applies only to line charts.
    # @return [Line]
    attr_accessor :hi_lo_lines
    # Indicates whether the threshold value is automatic.
    # @return [BOOLEAN]
    attr_accessor :is_auto_split
    # Represents if the color of points is varied.                          The chart must contain only one series.
    # @return [BOOLEAN]
    attr_accessor :is_color_varied
    # Represents leader lines on a chart. Leader lines connect data labels to data points.                          This object isn’t a collection; there’s no object that represents a single leader line.
    # @return [Line]
    attr_accessor :leader_lines
    # Gets the legend entry according to this series.
    # @return [LegendEntry]
    attr_accessor :legend_entry
    # Gets the marker.
    # @return [Marker]
    attr_accessor :marker
    # Gets or sets the name of the data series.
    # @return [String]
    attr_accessor :name
    # Specifies how bars and columns are positioned.                         Can be a value between – 100 and 100.                          Applies only to 2-D bar and 2-D column charts.
    # @return [Integer]
    attr_accessor :overlap
    # Indicates if this series is plotted on second value axis.
    # @return [BOOLEAN]
    attr_accessor :plot_on_second_axis
    # Gets the collection of points in a series in a chart.
    # @return [LinkElement]
    attr_accessor :points
    # Returns or sets the size of the secondary section of either a pie of pie chart or a bar of pie chart,                          as a percentage of the size of the primary pie.                         Can be a value from 5 to 200.
    # @return [Integer]
    attr_accessor :second_plot_size
    # Returns a SeriesLines object that represents the series lines for a stacked bar chart or a stacked column chart.                         Applies only to stacked bar and stacked column charts.
    # @return [Line]
    attr_accessor :series_lines
    # True if the series has a shadow.
    # @return [BOOLEAN]
    attr_accessor :shadow
    # True if negative bubbles are shown for the chart group. Valid only for bubble charts.
    # @return [BOOLEAN]
    attr_accessor :show_negative_bubbles
    # Gets or sets what the bubble size represents on a bubble chart.
    # @return [String]
    attr_accessor :size_represents
    # Represents curve smoothing.                          True if curve smoothing is turned on for the line chart or scatter chart.                         Applies only to line and scatter connected by lines charts.
    # @return [BOOLEAN]
    attr_accessor :smooth
    # Returns or sets a value that how to determine which data points are in the second pie or bar on a pie of pie or bar of                         pie chart.
    # @return [String]
    attr_accessor :split_type
    # Returns or sets a value that shall be used to determine which data points are in the second pie or bar on                         a pie of pie or bar of pie chart.
    # @return [Float]
    attr_accessor :split_value
    # Returns an object that represents a collection of all the trendlines for the series.
    # @return [Trendlines]
    attr_accessor :trend_lines
    # Gets or sets a data series' type.
    # @return [String]
    attr_accessor :type
    # Returns an DropBars object that represents the up bars on a line chart.                         Applies only to line charts.
    # @return [DropBars]
    attr_accessor :up_bars
    # Represents the data of the chart series.
    # @return [String]
    attr_accessor :values
    # Represents X direction error bar of the series.
    # @return [ErrorBar]
    attr_accessor :x_error_bar
    # Represents the x values of the chart series.
    # @return [String]
    attr_accessor :x_values
    # Represents Y direction error bar of the series.
    # @return [ErrorBar]
    attr_accessor :y_error_bar
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'area' => :'Area',
        :'bar3_d_shape_type' => :'Bar3DShapeType',
        :'border' => :'Border',
        :'bubble_scale' => :'BubbleScale',
        :'bubble_sizes' => :'BubbleSizes',
        :'count_of_data_values' => :'CountOfDataValues',
        :'data_labels' => :'DataLabels',
        :'display_name' => :'DisplayName',
        :'doughnut_hole_size' => :'DoughnutHoleSize',
        :'down_bars' => :'DownBars',
        :'drop_lines' => :'DropLines',
        :'explosion' => :'Explosion',
        :'first_slice_angle' => :'FirstSliceAngle',
        :'gap_width' => :'GapWidth',
        :'has3_d_effect' => :'Has3DEffect',
        :'has_drop_lines' => :'HasDropLines',
        :'has_hi_lo_lines' => :'HasHiLoLines',
        :'has_leader_lines' => :'HasLeaderLines',
        :'has_radar_axis_labels' => :'HasRadarAxisLabels',
        :'has_series_lines' => :'HasSeriesLines',
        :'has_up_down_bars' => :'HasUpDownBars',
        :'hi_lo_lines' => :'HiLoLines',
        :'is_auto_split' => :'IsAutoSplit',
        :'is_color_varied' => :'IsColorVaried',
        :'leader_lines' => :'LeaderLines',
        :'legend_entry' => :'LegendEntry',
        :'marker' => :'Marker',
        :'name' => :'Name',
        :'overlap' => :'Overlap',
        :'plot_on_second_axis' => :'PlotOnSecondAxis',
        :'points' => :'Points',
        :'second_plot_size' => :'SecondPlotSize',
        :'series_lines' => :'SeriesLines',
        :'shadow' => :'Shadow',
        :'show_negative_bubbles' => :'ShowNegativeBubbles',
        :'size_represents' => :'SizeRepresents',
        :'smooth' => :'Smooth',
        :'split_type' => :'SplitType',
        :'split_value' => :'SplitValue',
        :'trend_lines' => :'TrendLines',
        :'type' => :'Type',
        :'up_bars' => :'UpBars',
        :'values' => :'Values',
        :'x_error_bar' => :'XErrorBar',
        :'x_values' => :'XValues',
        :'y_error_bar' => :'YErrorBar',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'area' => :'Area',
        :'bar3_d_shape_type' => :'String',
        :'border' => :'Line',
        :'bubble_scale' => :'Integer',
        :'bubble_sizes' => :'String',
        :'count_of_data_values' => :'Integer',
        :'data_labels' => :'DataLabels',
        :'display_name' => :'String',
        :'doughnut_hole_size' => :'Integer',
        :'down_bars' => :'DropBars',
        :'drop_lines' => :'Line',
        :'explosion' => :'Integer',
        :'first_slice_angle' => :'Integer',
        :'gap_width' => :'Integer',
        :'has3_d_effect' => :'BOOLEAN',
        :'has_drop_lines' => :'BOOLEAN',
        :'has_hi_lo_lines' => :'BOOLEAN',
        :'has_leader_lines' => :'BOOLEAN',
        :'has_radar_axis_labels' => :'BOOLEAN',
        :'has_series_lines' => :'BOOLEAN',
        :'has_up_down_bars' => :'BOOLEAN',
        :'hi_lo_lines' => :'Line',
        :'is_auto_split' => :'BOOLEAN',
        :'is_color_varied' => :'BOOLEAN',
        :'leader_lines' => :'Line',
        :'legend_entry' => :'LegendEntry',
        :'marker' => :'Marker',
        :'name' => :'String',
        :'overlap' => :'Integer',
        :'plot_on_second_axis' => :'BOOLEAN',
        :'points' => :'LinkElement',
        :'second_plot_size' => :'Integer',
        :'series_lines' => :'Line',
        :'shadow' => :'BOOLEAN',
        :'show_negative_bubbles' => :'BOOLEAN',
        :'size_represents' => :'String',
        :'smooth' => :'BOOLEAN',
        :'split_type' => :'String',
        :'split_value' => :'Float',
        :'trend_lines' => :'Trendlines',
        :'type' => :'String',
        :'up_bars' => :'DropBars',
        :'values' => :'String',
        :'x_error_bar' => :'ErrorBar',
        :'x_values' => :'String',
        :'y_error_bar' => :'ErrorBar',
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
      self.bar3_d_shape_type = attributes[:bar3_d_shape_type] if attributes.key?(:bar3_d_shape_type)
      self.border = attributes[:border] if attributes.key?(:border)
      self.bubble_scale = attributes[:bubble_scale] if attributes.key?(:bubble_scale)
      self.bubble_sizes = attributes[:bubble_sizes] if attributes.key?(:bubble_sizes)
      self.count_of_data_values = attributes[:count_of_data_values] if attributes.key?(:count_of_data_values)
      self.data_labels = attributes[:data_labels] if attributes.key?(:data_labels)
      self.display_name = attributes[:display_name] if attributes.key?(:display_name)
      self.doughnut_hole_size = attributes[:doughnut_hole_size] if attributes.key?(:doughnut_hole_size)
      self.down_bars = attributes[:down_bars] if attributes.key?(:down_bars)
      self.drop_lines = attributes[:drop_lines] if attributes.key?(:drop_lines)
      self.explosion = attributes[:explosion] if attributes.key?(:explosion)
      self.first_slice_angle = attributes[:first_slice_angle] if attributes.key?(:first_slice_angle)
      self.gap_width = attributes[:gap_width] if attributes.key?(:gap_width)
      self.has3_d_effect = attributes[:has3_d_effect] if attributes.key?(:has3_d_effect)
      self.has_drop_lines = attributes[:has_drop_lines] if attributes.key?(:has_drop_lines)
      self.has_hi_lo_lines = attributes[:has_hi_lo_lines] if attributes.key?(:has_hi_lo_lines)
      self.has_leader_lines = attributes[:has_leader_lines] if attributes.key?(:has_leader_lines)
      self.has_radar_axis_labels = attributes[:has_radar_axis_labels] if attributes.key?(:has_radar_axis_labels)
      self.has_series_lines = attributes[:has_series_lines] if attributes.key?(:has_series_lines)
      self.has_up_down_bars = attributes[:has_up_down_bars] if attributes.key?(:has_up_down_bars)
      self.hi_lo_lines = attributes[:hi_lo_lines] if attributes.key?(:hi_lo_lines)
      self.is_auto_split = attributes[:is_auto_split] if attributes.key?(:is_auto_split)
      self.is_color_varied = attributes[:is_color_varied] if attributes.key?(:is_color_varied)
      self.leader_lines = attributes[:leader_lines] if attributes.key?(:leader_lines)
      self.legend_entry = attributes[:legend_entry] if attributes.key?(:legend_entry)
      self.marker = attributes[:marker] if attributes.key?(:marker)
      self.name = attributes[:name] if attributes.key?(:name)
      self.overlap = attributes[:overlap] if attributes.key?(:overlap)
      self.plot_on_second_axis = attributes[:plot_on_second_axis] if attributes.key?(:plot_on_second_axis)
      self.points = attributes[:points] if attributes.key?(:points)
      self.second_plot_size = attributes[:second_plot_size] if attributes.key?(:second_plot_size)
      self.series_lines = attributes[:series_lines] if attributes.key?(:series_lines)
      self.shadow = attributes[:shadow] if attributes.key?(:shadow)
      self.show_negative_bubbles = attributes[:show_negative_bubbles] if attributes.key?(:show_negative_bubbles)
      self.size_represents = attributes[:size_represents] if attributes.key?(:size_represents)
      self.smooth = attributes[:smooth] if attributes.key?(:smooth)
      self.split_type = attributes[:split_type] if attributes.key?(:split_type)
      self.split_value = attributes[:split_value] if attributes.key?(:split_value)
      self.trend_lines = attributes[:trend_lines] if attributes.key?(:trend_lines)
      self.type = attributes[:type] if attributes.key?(:type)
      self.up_bars = attributes[:up_bars] if attributes.key?(:up_bars)
      self.values = attributes[:values] if attributes.key?(:values)
      self.x_error_bar = attributes[:x_error_bar] if attributes.key?(:x_error_bar)
      self.x_values = attributes[:x_values] if attributes.key?(:x_values)
      self.y_error_bar = attributes[:y_error_bar] if attributes.key?(:y_error_bar)
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
