=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="MergeQueries.rb">
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
require_relative 'applied_operate'

module AsposeCellsCloud

  # Represents merge quesies.
  class MergeQueries < AppliedOperate
    # Indicates the name of the data query , it is matched in the data query set.
    # @return [String]
    attr_accessor :data_query_name_a
    # Represents index field  of DataA.
    # @return [String]
    attr_accessor :data_a_index_field
    # Indicates the name of the data query , it is matched in the data query set.
    # @return [String]
    attr_accessor :data_query_name_b
    # Represents index field  of DataB.
    # @return [String]
    attr_accessor :data_b_index_field
    # Represents ethods of data consolidation.
    # @return [String]
    attr_accessor :join_type
    # @return [String]
    attr_accessor :applied_operate_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'data_query_name_a' => :'DataQueryNameA',
        :'data_a_index_field' => :'DataAIndexField',
        :'data_query_name_b' => :'DataQueryNameB',
        :'data_b_index_field' => :'DataBIndexField',
        :'join_type' => :'JoinType',
        :'applied_operate_type' => :'AppliedOperateType',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'data_query_name_a' => :'String',
        :'data_a_index_field' => :'String',
        :'data_query_name_b' => :'String',
        :'data_b_index_field' => :'String',
        :'join_type' => :'String',
        :'applied_operate_type' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.data_query_name_a = attributes[:data_query_name_a] if attributes.key?(:data_query_name_a)
      self.data_a_index_field = attributes[:data_a_index_field] if attributes.key?(:data_a_index_field)
      self.data_query_name_b = attributes[:data_query_name_b] if attributes.key?(:data_query_name_b)
      self.data_b_index_field = attributes[:data_b_index_field] if attributes.key?(:data_b_index_field)
      self.join_type = attributes[:join_type] if attributes.key?(:join_type)
      self.applied_operate_type = attributes[:applied_operate_type] if attributes.key?(:applied_operate_type)
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
