=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="FormulaSettings.rb">
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

  # Settings of formulas and calculation.
  class FormulaSettings
    # Indicates whether the application is required to perform a full calculation when the workbook is opened.
    # @return [BOOLEAN]
    attr_accessor :calculate_on_open
    # Indicates whether recalculate the workbook before saving the document, when in manual calculation mode.
    # @return [BOOLEAN]
    attr_accessor :calculate_on_save
    # Indicates whether calculates all formulas every time when a calculation is triggered.
    # @return [BOOLEAN]
    attr_accessor :force_full_calculation
    # Gets or sets the mode for workbook calculation in ms excel.
    # @return [String]
    attr_accessor :calculation_mode
    # Specifies the version of the calculation engine used to calculate values in the workbook.
    # @return [String]
    attr_accessor :calculation_id
    # Indicates whether enable iterative calculation to resolve circular references.
    # @return [BOOLEAN]
    attr_accessor :enable_iterative_calculation
    # The maximum iterations to resolve a circular reference.
    # @return [Integer]
    attr_accessor :max_iteration
    # The maximum change to resolve a circular reference.
    # @return [Float]
    attr_accessor :max_change
    # Whether the precision of calculated result be set as they are displayed while calculating formulas
    # @return [BOOLEAN]
    attr_accessor :precision_as_displayed
    # Whether enable calculation chain for formulas. Default is false.
    # @return [BOOLEAN]
    attr_accessor :enable_calculation_chain
    # Indicates whether preserve those spaces and line breaks that are padded between formula tokens             while getting and setting formulas.             Default value is false.
    # @return [BOOLEAN]
    attr_accessor :preserve_padding_spaces

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'calculate_on_open' => :'CalculateOnOpen',
        :'calculate_on_save' => :'CalculateOnSave',
        :'force_full_calculation' => :'ForceFullCalculation',
        :'calculation_mode' => :'CalculationMode',
        :'calculation_id' => :'CalculationId',
        :'enable_iterative_calculation' => :'EnableIterativeCalculation',
        :'max_iteration' => :'MaxIteration',
        :'max_change' => :'MaxChange',
        :'precision_as_displayed' => :'PrecisionAsDisplayed',
        :'enable_calculation_chain' => :'EnableCalculationChain',
        :'preserve_padding_spaces' => :'PreservePaddingSpaces',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'calculate_on_open' => :'BOOLEAN',
        :'calculate_on_save' => :'BOOLEAN',
        :'force_full_calculation' => :'BOOLEAN',
        :'calculation_mode' => :'String',
        :'calculation_id' => :'String',
        :'enable_iterative_calculation' => :'BOOLEAN',
        :'max_iteration' => :'Integer',
        :'max_change' => :'Float',
        :'precision_as_displayed' => :'BOOLEAN',
        :'enable_calculation_chain' => :'BOOLEAN',
        :'preserve_padding_spaces' => :'BOOLEAN',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.calculate_on_open = attributes[:calculate_on_open] if attributes.key?(:calculate_on_open)
      self.calculate_on_save = attributes[:calculate_on_save] if attributes.key?(:calculate_on_save)
      self.force_full_calculation = attributes[:force_full_calculation] if attributes.key?(:force_full_calculation)
      self.calculation_mode = attributes[:calculation_mode] if attributes.key?(:calculation_mode)
      self.calculation_id = attributes[:calculation_id] if attributes.key?(:calculation_id)
      self.enable_iterative_calculation = attributes[:enable_iterative_calculation] if attributes.key?(:enable_iterative_calculation)
      self.max_iteration = attributes[:max_iteration] if attributes.key?(:max_iteration)
      self.max_change = attributes[:max_change] if attributes.key?(:max_change)
      self.precision_as_displayed = attributes[:precision_as_displayed] if attributes.key?(:precision_as_displayed)
      self.enable_calculation_chain = attributes[:enable_calculation_chain] if attributes.key?(:enable_calculation_chain)
      self.preserve_padding_spaces = attributes[:preserve_padding_spaces] if attributes.key?(:preserve_padding_spaces)
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
