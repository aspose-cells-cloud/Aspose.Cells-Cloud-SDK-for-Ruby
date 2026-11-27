=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="CalculationOptions.rb">
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

  # Represents options for calculation.
  class CalculationOptions
    # Specifies the stack size for calculating cells recursively.
    # @return [Integer]
    attr_accessor :calc_stack_size
    # Indicates whether errors encountered while calculating formulas should be ignored.             The error may be unsupported function, external links, etc.             The default value is true.
    # @return [BOOLEAN]
    attr_accessor :ignore_error
    # Specifies the strategy for processing precision of calculation.
    # @return [String]
    attr_accessor :precision_strategy
    # Indicates whether calculate the dependent cells recursively when calculating one cell and it depends on other cells.             The default value is true.
    # @return [BOOLEAN]
    attr_accessor :recursive
    # The custom formula calculation engine to extend the default calculation engine of Aspose.Cells.
    # @return [AbstractCalculationEngine]
    attr_accessor :custom_engine
    # The monitor for user to track the progress of formula calculation.
    # @return [AbstractCalculationMonitor]
    attr_accessor :calculation_monitor
    # Specifies the data sources for external links used in formulas.
    # @return [Array<Workbook>]
    attr_accessor :linked_data_sources

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'calc_stack_size' => :'CalcStackSize',
        :'ignore_error' => :'IgnoreError',
        :'precision_strategy' => :'PrecisionStrategy',
        :'recursive' => :'Recursive',
        :'custom_engine' => :'CustomEngine',
        :'calculation_monitor' => :'CalculationMonitor',
        :'linked_data_sources' => :'LinkedDataSources',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'calc_stack_size' => :'Integer',
        :'ignore_error' => :'BOOLEAN',
        :'precision_strategy' => :'String',
        :'recursive' => :'BOOLEAN',
        :'custom_engine' => :'AbstractCalculationEngine',
        :'calculation_monitor' => :'AbstractCalculationMonitor',
        :'linked_data_sources' => :'Array<Workbook>',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.calc_stack_size = attributes[:calc_stack_size] if attributes.key?(:calc_stack_size)
      self.ignore_error = attributes[:ignore_error] if attributes.key?(:ignore_error)
      self.precision_strategy = attributes[:precision_strategy] if attributes.key?(:precision_strategy)
      self.recursive = attributes[:recursive] if attributes.key?(:recursive)
      self.custom_engine = attributes[:custom_engine] if attributes.key?(:custom_engine)
      self.calculation_monitor = attributes[:calculation_monitor] if attributes.key?(:calculation_monitor)
      self.linked_data_sources = attributes[:linked_data_sources] if attributes.key?(:linked_data_sources)
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
