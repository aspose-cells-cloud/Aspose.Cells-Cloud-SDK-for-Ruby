=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="FilterColumn.rb">
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

  # Represents a filter for a single column. The Filter object is a member of the Filters collection
  class FilterColumn
    # Gets and sets the column offset in the range.
    # @return [Integer]
    attr_accessor :field_index
    # Gets and sets the type fo filtering data.
    # @return [String]
    attr_accessor :filter_type
    # This class contains a property named "MultipleFilters" of type "MultipleFilters" that can be both read and written.
    # @return [MultipleFilters]
    attr_accessor :multiple_filters
    # @return [ColorFilter]
    attr_accessor :color_filter
    # @return [Array<CustomFilter>]
    attr_accessor :custom_filters
    # @return [DynamicFilter]
    attr_accessor :dynamic_filter
    # @return [IconFilter]
    attr_accessor :icon_filter
    # @return [Top10Filter]
    attr_accessor :top10_filter
    # Indicates whether the AutoFilter button for this column is visible.
    # @return [String]
    attr_accessor :visibledropdown

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'field_index' => :'FieldIndex',
        :'filter_type' => :'FilterType',
        :'multiple_filters' => :'MultipleFilters',
        :'color_filter' => :'ColorFilter',
        :'custom_filters' => :'CustomFilters',
        :'dynamic_filter' => :'DynamicFilter',
        :'icon_filter' => :'IconFilter',
        :'top10_filter' => :'Top10Filter',
        :'visibledropdown' => :'Visibledropdown',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'field_index' => :'Integer',
        :'filter_type' => :'String',
        :'multiple_filters' => :'MultipleFilters',
        :'color_filter' => :'ColorFilter',
        :'custom_filters' => :'Array<CustomFilter>',
        :'dynamic_filter' => :'DynamicFilter',
        :'icon_filter' => :'IconFilter',
        :'top10_filter' => :'Top10Filter',
        :'visibledropdown' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.field_index = attributes[:field_index] if attributes.key?(:field_index)
      self.filter_type = attributes[:filter_type] if attributes.key?(:filter_type)
      self.multiple_filters = attributes[:multiple_filters] if attributes.key?(:multiple_filters)
      self.color_filter = attributes[:color_filter] if attributes.key?(:color_filter)
      self.custom_filters = attributes[:custom_filters] if attributes.key?(:custom_filters)
      self.dynamic_filter = attributes[:dynamic_filter] if attributes.key?(:dynamic_filter)
      self.icon_filter = attributes[:icon_filter] if attributes.key?(:icon_filter)
      self.top10_filter = attributes[:top10_filter] if attributes.key?(:top10_filter)
      self.visibledropdown = attributes[:visibledropdown] if attributes.key?(:visibledropdown)
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
