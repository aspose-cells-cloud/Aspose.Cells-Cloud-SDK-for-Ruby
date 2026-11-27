=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PivotFilter.rb">
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

  # Represents a PivotFilter in PivotFilter Collection.
  class PivotFilter
    # Gets the autofilter of the pivot filter.
    # @return [AutoFilter]
    attr_accessor :auto_filter
    # Gets the Evaluation Order of the pivot filter.
    # @return [Integer]
    attr_accessor :evaluation_order
    # Gets the field index of the pivot filter.
    # @return [Integer]
    attr_accessor :field_index
    # Gets the autofilter type of the pivot filter.
    # @return [String]
    attr_accessor :filter_type
    # Gets the measure field index of the pivot filter.
    # @return [Integer]
    attr_accessor :value_field_index
    # Gets the member property field index of the pivot filter.
    # @return [Integer]
    attr_accessor :member_property_field_index
    # Gets the name of the pivot filter.
    # @return [String]
    attr_accessor :name
    # Gets the string value1 of the label pivot filter.
    # @return [String]
    attr_accessor :value1
    # Gets the string value2 of the label pivot filter.
    # @return [String]
    attr_accessor :value2
    # A property that allows for setting and getting a Top10Filter object for filtering data.
    # @return [Top10Filter]
    attr_accessor :top10_filter

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_filter' => :'AutoFilter',
        :'evaluation_order' => :'EvaluationOrder',
        :'field_index' => :'FieldIndex',
        :'filter_type' => :'FilterType',
        :'value_field_index' => :'ValueFieldIndex',
        :'member_property_field_index' => :'MemberPropertyFieldIndex',
        :'name' => :'Name',
        :'value1' => :'Value1',
        :'value2' => :'Value2',
        :'top10_filter' => :'Top10Filter',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_filter' => :'AutoFilter',
        :'evaluation_order' => :'Integer',
        :'field_index' => :'Integer',
        :'filter_type' => :'String',
        :'value_field_index' => :'Integer',
        :'member_property_field_index' => :'Integer',
        :'name' => :'String',
        :'value1' => :'String',
        :'value2' => :'String',
        :'top10_filter' => :'Top10Filter',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.auto_filter = attributes[:auto_filter] if attributes.key?(:auto_filter)
      self.evaluation_order = attributes[:evaluation_order] if attributes.key?(:evaluation_order)
      self.field_index = attributes[:field_index] if attributes.key?(:field_index)
      self.filter_type = attributes[:filter_type] if attributes.key?(:filter_type)
      self.value_field_index = attributes[:value_field_index] if attributes.key?(:value_field_index)
      self.member_property_field_index = attributes[:member_property_field_index] if attributes.key?(:member_property_field_index)
      self.name = attributes[:name] if attributes.key?(:name)
      self.value1 = attributes[:value1] if attributes.key?(:value1)
      self.value2 = attributes[:value2] if attributes.key?(:value2)
      self.top10_filter = attributes[:top10_filter] if attributes.key?(:top10_filter)
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
