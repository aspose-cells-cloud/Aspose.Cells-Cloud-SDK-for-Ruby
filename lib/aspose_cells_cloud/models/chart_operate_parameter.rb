=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ChartOperateParameter.rb">
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
require_relative 'operate_parameter'

module AsposeCellsCloud

  # Represents chart operate parameter.
  class ChartOperateParameter < OperateParameter
    # Represents chart index.
    # @return [Integer]
    attr_accessor :chart_index
    # Represents chart type.
    # @return [String]
    attr_accessor :chart_type
    # Represents upper left row index of chart.
    # @return [Integer]
    attr_accessor :upper_left_row
    # Represents upper left column index of chart.
    # @return [Integer]
    attr_accessor :upper_left_column
    # Represents lower right row index of chart.
    # @return [Integer]
    attr_accessor :lower_right_row
    # Represents lower right column index of chart.
    # @return [Integer]
    attr_accessor :lower_right_column
    # Represents chart area.
    # @return [String]
    attr_accessor :area
    # Represents whether to plot the series from a range of cell values by row or by column.
    # @return [BOOLEAN]
    attr_accessor :is_vertical
    # Represents chart category data.
    # @return [String]
    attr_accessor :category_data
    # Represents whether auto get serial name.
    # @return [BOOLEAN]
    attr_accessor :is_auto_get_serial_name
    # Represents chart title.
    # @return [String]
    attr_accessor :title
    # @return [String]
    attr_accessor :operate_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'chart_index' => :'ChartIndex',
        :'chart_type' => :'ChartType',
        :'upper_left_row' => :'UpperLeftRow',
        :'upper_left_column' => :'UpperLeftColumn',
        :'lower_right_row' => :'LowerRightRow',
        :'lower_right_column' => :'LowerRightColumn',
        :'area' => :'Area',
        :'is_vertical' => :'IsVertical',
        :'category_data' => :'CategoryData',
        :'is_auto_get_serial_name' => :'IsAutoGetSerialName',
        :'title' => :'Title',
        :'operate_type' => :'OperateType',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'chart_index' => :'Integer',
        :'chart_type' => :'String',
        :'upper_left_row' => :'Integer',
        :'upper_left_column' => :'Integer',
        :'lower_right_row' => :'Integer',
        :'lower_right_column' => :'Integer',
        :'area' => :'String',
        :'is_vertical' => :'BOOLEAN',
        :'category_data' => :'String',
        :'is_auto_get_serial_name' => :'BOOLEAN',
        :'title' => :'String',
        :'operate_type' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.chart_index = attributes[:chart_index] if attributes.key?(:chart_index)
      self.chart_type = attributes[:chart_type] if attributes.key?(:chart_type)
      self.upper_left_row = attributes[:upper_left_row] if attributes.key?(:upper_left_row)
      self.upper_left_column = attributes[:upper_left_column] if attributes.key?(:upper_left_column)
      self.lower_right_row = attributes[:lower_right_row] if attributes.key?(:lower_right_row)
      self.lower_right_column = attributes[:lower_right_column] if attributes.key?(:lower_right_column)
      self.area = attributes[:area] if attributes.key?(:area)
      self.is_vertical = attributes[:is_vertical] if attributes.key?(:is_vertical)
      self.category_data = attributes[:category_data] if attributes.key?(:category_data)
      self.is_auto_get_serial_name = attributes[:is_auto_get_serial_name] if attributes.key?(:is_auto_get_serial_name)
      self.title = attributes[:title] if attributes.key?(:title)
      self.operate_type = attributes[:operate_type] if attributes.key?(:operate_type)
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
