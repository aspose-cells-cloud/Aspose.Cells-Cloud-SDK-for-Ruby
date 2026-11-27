=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="LoadOptions.rb">
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

  # Represents the options of loading the file.
  class LoadOptions
    # This class has a public property named "ConvertNumericData" of type string that can be read from and written to.
    # @return [String]
    attr_accessor :convert_numeric_data
    # Gets and sets the interrupt monitor.
    # @return [String]
    attr_accessor :interrupt_monitor
    # Gets or sets the user interface language of the Workbook version based on CountryCode that has saved the file.
    # @return [String]
    attr_accessor :language_code
    # @return [String]
    attr_accessor :load_data_options
    # Gets the load format.
    # @return [String]
    attr_accessor :load_format
    # @return [String]
    attr_accessor :only_load_document_properties
    # Indicates whether parsing the formula when reading the file.
    # @return [String]
    attr_accessor :parsing_formula_on_open
    # Gets and set the password of the workbook.
    # @return [String]
    attr_accessor :password
    # Gets or sets the system regional settings based on CountryCode at the time the file was loaded.
    # @return [String]
    attr_accessor :region
    # Sets the default standard font name
    # @return [String]
    attr_accessor :standard_font
    # Sets the default standard font size.
    # @return [Float]
    attr_accessor :standard_font_size

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'convert_numeric_data' => :'ConvertNumericData',
        :'interrupt_monitor' => :'InterruptMonitor',
        :'language_code' => :'LanguageCode',
        :'load_data_options' => :'LoadDataOptions',
        :'load_format' => :'LoadFormat',
        :'only_load_document_properties' => :'OnlyLoadDocumentProperties',
        :'parsing_formula_on_open' => :'ParsingFormulaOnOpen',
        :'password' => :'Password',
        :'region' => :'Region',
        :'standard_font' => :'StandardFont',
        :'standard_font_size' => :'StandardFontSize',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'convert_numeric_data' => :'String',
        :'interrupt_monitor' => :'String',
        :'language_code' => :'String',
        :'load_data_options' => :'String',
        :'load_format' => :'String',
        :'only_load_document_properties' => :'String',
        :'parsing_formula_on_open' => :'String',
        :'password' => :'String',
        :'region' => :'String',
        :'standard_font' => :'String',
        :'standard_font_size' => :'Float',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.convert_numeric_data = attributes[:convert_numeric_data] if attributes.key?(:convert_numeric_data)
      self.interrupt_monitor = attributes[:interrupt_monitor] if attributes.key?(:interrupt_monitor)
      self.language_code = attributes[:language_code] if attributes.key?(:language_code)
      self.load_data_options = attributes[:load_data_options] if attributes.key?(:load_data_options)
      self.load_format = attributes[:load_format] if attributes.key?(:load_format)
      self.only_load_document_properties = attributes[:only_load_document_properties] if attributes.key?(:only_load_document_properties)
      self.parsing_formula_on_open = attributes[:parsing_formula_on_open] if attributes.key?(:parsing_formula_on_open)
      self.password = attributes[:password] if attributes.key?(:password)
      self.region = attributes[:region] if attributes.key?(:region)
      self.standard_font = attributes[:standard_font] if attributes.key?(:standard_font)
      self.standard_font_size = attributes[:standard_font_size] if attributes.key?(:standard_font_size)
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
