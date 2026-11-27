=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="AboveAverage.rb">
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

  # Describe the AboveAverage conditional formatting rule. This conditional formatting     rule highlights cells that are above or below the average for all values     in the range.
  class AboveAverage
    # Get or set the flag indicating whether the rule is an "above average" rule.              'true' indicates 'above average'.             Default value is true.
    # @return [BOOLEAN]
    attr_accessor :is_above_average
    # Get or set the flag indicating whether the 'aboveAverage' and 'belowAverage' criteria              is inclusive of the average itself, or exclusive of that value.              'true' indicates to include the average value in the criteria.             Default value is false.
    # @return [BOOLEAN]
    attr_accessor :is_equal_average
    # Get or set the number of standard deviations to include above or below the average in the             conditional formatting rule.              The input value must between 0 and 3 (include 0 and 3).              Setting this value to 0 means stdDev is not set.             The default value is 0.
    # @return [Integer]
    attr_accessor :std_dev

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_above_average' => :'IsAboveAverage',
        :'is_equal_average' => :'IsEqualAverage',
        :'std_dev' => :'StdDev',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'is_above_average' => :'BOOLEAN',
        :'is_equal_average' => :'BOOLEAN',
        :'std_dev' => :'Integer',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.is_above_average = attributes[:is_above_average] if attributes.key?(:is_above_average)
      self.is_equal_average = attributes[:is_equal_average] if attributes.key?(:is_equal_average)
      self.std_dev = attributes[:std_dev] if attributes.key?(:std_dev)
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
