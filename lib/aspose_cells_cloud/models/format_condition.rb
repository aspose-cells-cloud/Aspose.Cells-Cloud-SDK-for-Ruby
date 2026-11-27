=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="FormatCondition.rb">
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

  # Represents conditional formatting condition.
  class FormatCondition < LinkElement
    # The priority of this conditional formatting rule. This value is used to determine which                         format should be evaluated and rendered. Lower numeric values are higher priority than                         higher numeric values, where '1' is the highest priority.
    # @return [Integer]
    attr_accessor :priority
    # Gets and sets whether the conditional format Type.
    # @return [String]
    attr_accessor :type
    # True, no rules with lower priority may be applied over this rule, when this rule evaluates to true.                         Only applies for Excel 2007;
    # @return [BOOLEAN]
    attr_accessor :stop_if_true
    # Get the conditional formatting's "AboveAverage" instance.                         The default instance's rule highlights cells that are                          above the average for all values in the range.                         Valid only for type = AboveAverage.
    # @return [AboveAverage]
    attr_accessor :above_average
    # Get the conditional formatting's "ColorScale" instance.                         The default instance is a "green-yellow-red" 3ColorScale .                         Valid only for type = ColorScale.
    # @return [ColorScale]
    attr_accessor :color_scale
    # Get the conditional formatting's "DataBar" instance.                         The default instance's color is blue.                         Valid only for type is DataBar.
    # @return [DataBar]
    attr_accessor :data_bar
    # Gets and sets the value or expression associated with conditional formatting.
    # @return [String]
    attr_accessor :formula1
    # Gets and sets the value or expression associated with conditional formatting.
    # @return [String]
    attr_accessor :formula2
    # Get the conditional formatting's "IconSet" instance.                         The default instance's IconSetType is TrafficLights31.                         Valid only for type = IconSet.
    # @return [IconSet]
    attr_accessor :icon_set
    # Gets and sets the conditional format operator type.
    # @return [String]
    attr_accessor :operator
    # Gets or setts style of conditional formatted cell ranges.
    # @return [Style]
    attr_accessor :style
    # The text value in a "text contains" conditional formatting rule.                          Valid only for type = containsText, notContainsText, beginsWith and endsWith.                         The default value is null.
    # @return [String]
    attr_accessor :text
    # The applicable time period in a "date occurring…" conditional formatting rule.                          Valid only for type = timePeriod.                         The default value is TimePeriodType.Today.
    # @return [String]
    attr_accessor :time_period
    # Get the conditional formatting's "Top10" instance.                         The default instance's rule highlights cells whose                         values fall in the top 10 bracket.                         Valid only for type is Top10.
    # @return [Top10]
    attr_accessor :top10
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'priority' => :'Priority',
        :'type' => :'Type',
        :'stop_if_true' => :'StopIfTrue',
        :'above_average' => :'AboveAverage',
        :'color_scale' => :'ColorScale',
        :'data_bar' => :'DataBar',
        :'formula1' => :'Formula1',
        :'formula2' => :'Formula2',
        :'icon_set' => :'IconSet',
        :'operator' => :'Operator',
        :'style' => :'Style',
        :'text' => :'Text',
        :'time_period' => :'TimePeriod',
        :'top10' => :'Top10',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'priority' => :'Integer',
        :'type' => :'String',
        :'stop_if_true' => :'BOOLEAN',
        :'above_average' => :'AboveAverage',
        :'color_scale' => :'ColorScale',
        :'data_bar' => :'DataBar',
        :'formula1' => :'String',
        :'formula2' => :'String',
        :'icon_set' => :'IconSet',
        :'operator' => :'String',
        :'style' => :'Style',
        :'text' => :'String',
        :'time_period' => :'String',
        :'top10' => :'Top10',
        :'link' => :'Link',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.priority = attributes[:priority] if attributes.key?(:priority)
      self.type = attributes[:type] if attributes.key?(:type)
      self.stop_if_true = attributes[:stop_if_true] if attributes.key?(:stop_if_true)
      self.above_average = attributes[:above_average] if attributes.key?(:above_average)
      self.color_scale = attributes[:color_scale] if attributes.key?(:color_scale)
      self.data_bar = attributes[:data_bar] if attributes.key?(:data_bar)
      self.formula1 = attributes[:formula1] if attributes.key?(:formula1)
      self.formula2 = attributes[:formula2] if attributes.key?(:formula2)
      self.icon_set = attributes[:icon_set] if attributes.key?(:icon_set)
      self.operator = attributes[:operator] if attributes.key?(:operator)
      self.style = attributes[:style] if attributes.key?(:style)
      self.text = attributes[:text] if attributes.key?(:text)
      self.time_period = attributes[:time_period] if attributes.key?(:time_period)
      self.top10 = attributes[:top10] if attributes.key?(:top10)
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
