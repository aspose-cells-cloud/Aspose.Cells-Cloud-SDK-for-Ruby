=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Chart.rb">
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

  # Encapsulates the object that represents a single Excel chart.
  class Chart < LinkElement
    # True if Microsoft Excel scales a 3-D chart so that it's closer in size to the equivalent 2-D chart.                          The RightAngleAxes property must be True.
    # @return [BOOLEAN]
    attr_accessor :auto_scaling
    # Returns a  object that represents the back wall of a 3-D chart.
    # @return [Walls]
    attr_accessor :back_wall
    # Gets the chart's X axis.
    # @return [Axis]
    attr_accessor :category_axis
    # Gets the chart area in the worksheet.
    # @return [ChartArea]
    attr_accessor :chart_area
    # Represents the chart data table.
    # @return [ChartDataTable]
    attr_accessor :chart_data_table
    # Represents the chartShape;
    # @return [LinkElement]
    attr_accessor :chart_object
    # Represents the depth of a 3-D chart as a percentage of the chart width (between 20 and 2000 percent).
    # @return [Integer]
    attr_accessor :depth_percent
    # Represents the elevation of the 3-D chart view, in degrees.
    # @return [Integer]
    attr_accessor :elevation
    # Gets or sets the angle of the first pie-chart or doughnut-chart slice, in degrees (clockwise from vertical).                          Applies only to pie, 3-D pie, and doughnut charts, 0 to 360.
    # @return [Integer]
    attr_accessor :first_slice_angle
    # Returns a  object that represents the walls of a 3-D chart.
    # @return [Floor]
    attr_accessor :floor
    # Gets or sets the distance between the data series in a 3-D chart, as a percentage of the marker width.                         The value of this property must be between 0 and 500.
    # @return [Integer]
    attr_accessor :gap_depth
    # Returns or sets the space between bar or column clusters, as a percentage of the bar or column width.                         The value of this property must be between 0 and 500.
    # @return [Integer]
    attr_accessor :gap_width
    # Returns or sets the height of a 3-D chart as a percentage of the chart width (between 5 and 500 percent).
    # @return [Integer]
    attr_accessor :height_percent
    # Indicates whether hide the pivot chart field buttons only when the chart is PivotChart.
    # @return [BOOLEAN]
    attr_accessor :hide_pivot_field_buttons
    # Indicates whether the chart is a 3d chart.
    # @return [BOOLEAN]
    attr_accessor :is3_d
    # Gets or sets a value indicating whether the chart area is rectangular cornered.                         Default is true.
    # @return [BOOLEAN]
    attr_accessor :is_rectangular_cornered
    # Gets the chart legend.
    # @return [Legend]
    attr_accessor :legend
    # Represents chart name.
    # @return [String]
    attr_accessor :name
    # Gets a  collection representing the data series in the chart.
    # @return [SeriesItems]
    attr_accessor :n_series
    # Represents the page setup description in this chart.
    # @return [LinkElement]
    attr_accessor :page_setup
    # Returns or sets the perspective for the 3-D chart view. Must be between 0 and 100.                         This property is ignored if the RightAngleAxes property is True.
    # @return [Integer]
    attr_accessor :perspective
    # The source is the data of the pivotTable.                         If PivotSource is not empty ,the chart is PivotChart.
    # @return [String]
    attr_accessor :pivot_source
    # Represents the way the chart is attached to the cells below it.
    # @return [String]
    attr_accessor :placement
    # Gets the chart's plot area which includes axis tick labels.
    # @return [PlotArea]
    attr_accessor :plot_area
    # Gets and sets  how to plot the empty cells.
    # @return [String]
    attr_accessor :plot_empty_cells_type
    # Indicates whether only plot visible cells.
    # @return [BOOLEAN]
    attr_accessor :plot_visible_cells
    # Gets and sets the printed chart size.
    # @return [String]
    attr_accessor :print_size
    # True if the chart axes are at right angles. Applies only for 3-D charts(except Column3D and 3-D Pie Charts).
    # @return [BOOLEAN]
    attr_accessor :right_angle_axes
    # Represents the rotation of the 3-D chart view (the rotation of the plot area around the z-axis, in degrees).
    # @return [Integer]
    attr_accessor :rotation_angle
    # Gets the chart's second X axis.
    # @return [LinkElement]
    attr_accessor :second_category_axis
    # Gets the chart's second Y axis.
    # @return [LinkElement]
    attr_accessor :second_value_axis
    # Gets the chart's series axis.
    # @return [LinkElement]
    attr_accessor :series_axis
    # Returns all drawing shapes in this chart.
    # @return [LinkElement]
    attr_accessor :shapes
    # Gets or sets a value indicating whether the chart displays a data table.
    # @return [BOOLEAN]
    attr_accessor :show_data_table
    # Gets or sets a value indicating whether the chart legend will be displayed. Default is true.
    # @return [BOOLEAN]
    attr_accessor :show_legend
    # Returns a  object that represents the side wall of a 3-D chart.
    # @return [LinkElement]
    attr_accessor :side_wall
    # True if Microsoft Excel resizes the chart to match the size of the chart sheet window.
    # @return [BOOLEAN]
    attr_accessor :size_with_window
    # Gets and sets the builtin style.
    # @return [Integer]
    attr_accessor :style
    # Represents chart title.
    # @return [LinkElement]
    attr_accessor :title
    # Represents chart type.
    # @return [String]
    attr_accessor :type
    # Gets the chart's Y axis.
    # @return [Axis]
    attr_accessor :value_axis
    # Returns a  object that represents the walls of a 3-D chart.
    # @return [LinkElement]
    attr_accessor :walls
    # True if gridlines are drawn two-dimensionally on a 3-D chart.
    # @return [BOOLEAN]
    attr_accessor :walls_and_gridlines2_d
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_scaling' => :'AutoScaling',
        :'back_wall' => :'BackWall',
        :'category_axis' => :'CategoryAxis',
        :'chart_area' => :'ChartArea',
        :'chart_data_table' => :'ChartDataTable',
        :'chart_object' => :'ChartObject',
        :'depth_percent' => :'DepthPercent',
        :'elevation' => :'Elevation',
        :'first_slice_angle' => :'FirstSliceAngle',
        :'floor' => :'Floor',
        :'gap_depth' => :'GapDepth',
        :'gap_width' => :'GapWidth',
        :'height_percent' => :'HeightPercent',
        :'hide_pivot_field_buttons' => :'HidePivotFieldButtons',
        :'is3_d' => :'Is3D',
        :'is_rectangular_cornered' => :'IsRectangularCornered',
        :'legend' => :'Legend',
        :'name' => :'Name',
        :'n_series' => :'NSeries',
        :'page_setup' => :'PageSetup',
        :'perspective' => :'Perspective',
        :'pivot_source' => :'PivotSource',
        :'placement' => :'Placement',
        :'plot_area' => :'PlotArea',
        :'plot_empty_cells_type' => :'PlotEmptyCellsType',
        :'plot_visible_cells' => :'PlotVisibleCells',
        :'print_size' => :'PrintSize',
        :'right_angle_axes' => :'RightAngleAxes',
        :'rotation_angle' => :'RotationAngle',
        :'second_category_axis' => :'SecondCategoryAxis',
        :'second_value_axis' => :'SecondValueAxis',
        :'series_axis' => :'SeriesAxis',
        :'shapes' => :'Shapes',
        :'show_data_table' => :'ShowDataTable',
        :'show_legend' => :'ShowLegend',
        :'side_wall' => :'SideWall',
        :'size_with_window' => :'SizeWithWindow',
        :'style' => :'Style',
        :'title' => :'Title',
        :'type' => :'Type',
        :'value_axis' => :'ValueAxis',
        :'walls' => :'Walls',
        :'walls_and_gridlines2_d' => :'WallsAndGridlines2D',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_scaling' => :'BOOLEAN',
        :'back_wall' => :'Walls',
        :'category_axis' => :'Axis',
        :'chart_area' => :'ChartArea',
        :'chart_data_table' => :'ChartDataTable',
        :'chart_object' => :'LinkElement',
        :'depth_percent' => :'Integer',
        :'elevation' => :'Integer',
        :'first_slice_angle' => :'Integer',
        :'floor' => :'Floor',
        :'gap_depth' => :'Integer',
        :'gap_width' => :'Integer',
        :'height_percent' => :'Integer',
        :'hide_pivot_field_buttons' => :'BOOLEAN',
        :'is3_d' => :'BOOLEAN',
        :'is_rectangular_cornered' => :'BOOLEAN',
        :'legend' => :'Legend',
        :'name' => :'String',
        :'n_series' => :'SeriesItems',
        :'page_setup' => :'LinkElement',
        :'perspective' => :'Integer',
        :'pivot_source' => :'String',
        :'placement' => :'String',
        :'plot_area' => :'PlotArea',
        :'plot_empty_cells_type' => :'String',
        :'plot_visible_cells' => :'BOOLEAN',
        :'print_size' => :'String',
        :'right_angle_axes' => :'BOOLEAN',
        :'rotation_angle' => :'Integer',
        :'second_category_axis' => :'LinkElement',
        :'second_value_axis' => :'LinkElement',
        :'series_axis' => :'LinkElement',
        :'shapes' => :'LinkElement',
        :'show_data_table' => :'BOOLEAN',
        :'show_legend' => :'BOOLEAN',
        :'side_wall' => :'LinkElement',
        :'size_with_window' => :'BOOLEAN',
        :'style' => :'Integer',
        :'title' => :'LinkElement',
        :'type' => :'String',
        :'value_axis' => :'Axis',
        :'walls' => :'LinkElement',
        :'walls_and_gridlines2_d' => :'BOOLEAN',
        :'link' => :'Link',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.auto_scaling = attributes[:auto_scaling] if attributes.key?(:auto_scaling)
      self.back_wall = attributes[:back_wall] if attributes.key?(:back_wall)
      self.category_axis = attributes[:category_axis] if attributes.key?(:category_axis)
      self.chart_area = attributes[:chart_area] if attributes.key?(:chart_area)
      self.chart_data_table = attributes[:chart_data_table] if attributes.key?(:chart_data_table)
      self.chart_object = attributes[:chart_object] if attributes.key?(:chart_object)
      self.depth_percent = attributes[:depth_percent] if attributes.key?(:depth_percent)
      self.elevation = attributes[:elevation] if attributes.key?(:elevation)
      self.first_slice_angle = attributes[:first_slice_angle] if attributes.key?(:first_slice_angle)
      self.floor = attributes[:floor] if attributes.key?(:floor)
      self.gap_depth = attributes[:gap_depth] if attributes.key?(:gap_depth)
      self.gap_width = attributes[:gap_width] if attributes.key?(:gap_width)
      self.height_percent = attributes[:height_percent] if attributes.key?(:height_percent)
      self.hide_pivot_field_buttons = attributes[:hide_pivot_field_buttons] if attributes.key?(:hide_pivot_field_buttons)
      self.is3_d = attributes[:is3_d] if attributes.key?(:is3_d)
      self.is_rectangular_cornered = attributes[:is_rectangular_cornered] if attributes.key?(:is_rectangular_cornered)
      self.legend = attributes[:legend] if attributes.key?(:legend)
      self.name = attributes[:name] if attributes.key?(:name)
      self.n_series = attributes[:n_series] if attributes.key?(:n_series)
      self.page_setup = attributes[:page_setup] if attributes.key?(:page_setup)
      self.perspective = attributes[:perspective] if attributes.key?(:perspective)
      self.pivot_source = attributes[:pivot_source] if attributes.key?(:pivot_source)
      self.placement = attributes[:placement] if attributes.key?(:placement)
      self.plot_area = attributes[:plot_area] if attributes.key?(:plot_area)
      self.plot_empty_cells_type = attributes[:plot_empty_cells_type] if attributes.key?(:plot_empty_cells_type)
      self.plot_visible_cells = attributes[:plot_visible_cells] if attributes.key?(:plot_visible_cells)
      self.print_size = attributes[:print_size] if attributes.key?(:print_size)
      self.right_angle_axes = attributes[:right_angle_axes] if attributes.key?(:right_angle_axes)
      self.rotation_angle = attributes[:rotation_angle] if attributes.key?(:rotation_angle)
      self.second_category_axis = attributes[:second_category_axis] if attributes.key?(:second_category_axis)
      self.second_value_axis = attributes[:second_value_axis] if attributes.key?(:second_value_axis)
      self.series_axis = attributes[:series_axis] if attributes.key?(:series_axis)
      self.shapes = attributes[:shapes] if attributes.key?(:shapes)
      self.show_data_table = attributes[:show_data_table] if attributes.key?(:show_data_table)
      self.show_legend = attributes[:show_legend] if attributes.key?(:show_legend)
      self.side_wall = attributes[:side_wall] if attributes.key?(:side_wall)
      self.size_with_window = attributes[:size_with_window] if attributes.key?(:size_with_window)
      self.style = attributes[:style] if attributes.key?(:style)
      self.title = attributes[:title] if attributes.key?(:title)
      self.type = attributes[:type] if attributes.key?(:type)
      self.value_axis = attributes[:value_axis] if attributes.key?(:value_axis)
      self.walls = attributes[:walls] if attributes.key?(:walls)
      self.walls_and_gridlines2_d = attributes[:walls_and_gridlines2_d] if attributes.key?(:walls_and_gridlines2_d)
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
