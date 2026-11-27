=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="DateTimeGroupItem.rb">
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
require_relative 'multiple_filter'

module AsposeCellsCloud

  # Represents the datetime's group setting.
  class DateTimeGroupItem < MultipleFilter
    # Gets and sets the group type.
    # @return [String]
    attr_accessor :date_time_grouping_type
    # Gets and sets the day of the grouped date time.
    # @return [Integer]
    attr_accessor :day
    # Gets and sets the hour of the grouped date time.
    # @return [Integer]
    attr_accessor :hour
    # Gets and sets the minute of the grouped date time.
    # @return [Integer]
    attr_accessor :minute
    # Gets and sets the month of the grouped date time.
    # @return [Integer]
    attr_accessor :month
    # Gets and sets the second of the grouped date time.
    # @return [Integer]
    attr_accessor :second
    # Gets and sets the year of the grouped date time.
    # @return [Integer]
    attr_accessor :year

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date_time_grouping_type' => :'DateTimeGroupingType',
        :'day' => :'Day',
        :'hour' => :'Hour',
        :'minute' => :'Minute',
        :'month' => :'Month',
        :'second' => :'Second',
        :'year' => :'Year',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'date_time_grouping_type' => :'String',
        :'day' => :'Integer',
        :'hour' => :'Integer',
        :'minute' => :'Integer',
        :'month' => :'Integer',
        :'second' => :'Integer',
        :'year' => :'Integer',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.date_time_grouping_type = attributes[:date_time_grouping_type] if attributes.key?(:date_time_grouping_type)
      self.day = attributes[:day] if attributes.key?(:day)
      self.hour = attributes[:hour] if attributes.key?(:hour)
      self.minute = attributes[:minute] if attributes.key?(:minute)
      self.month = attributes[:month] if attributes.key?(:month)
      self.second = attributes[:second] if attributes.key?(:second)
      self.year = attributes[:year] if attributes.key?(:year)
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
