=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="DataCleansingRequest.rb">
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

  # A data cleansing request for an Spreadsheet file.
  class DataCleansingRequest
    # Spreadsheet files that require data cleaning.
    # @return [FileInfo]
    attr_accessor :file
    # Whether check restriction of Spreadsheet file when user modify cells related objects.
    # @return [BOOLEAN]
    attr_accessor :check_excel_restriction
    # The regional settings for workbook.
    # @return [String]
    attr_accessor :region
    # finish to data cleansing, outfile`s file format.
    # @return [String]
    attr_accessor :out_file_format
    # Data cleansing content
    # @return [DataCleansing]
    attr_accessor :data_cleansing

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file' => :'File',
        :'check_excel_restriction' => :'CheckExcelRestriction',
        :'region' => :'Region',
        :'out_file_format' => :'OutFileFormat',
        :'data_cleansing' => :'DataCleansing',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'file' => :'FileInfo',
        :'check_excel_restriction' => :'BOOLEAN',
        :'region' => :'String',
        :'out_file_format' => :'String',
        :'data_cleansing' => :'DataCleansing',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.file = attributes[:file] if attributes.key?(:file)
      self.check_excel_restriction = attributes[:check_excel_restriction] if attributes.key?(:check_excel_restriction)
      self.region = attributes[:region] if attributes.key?(:region)
      self.out_file_format = attributes[:out_file_format] if attributes.key?(:out_file_format)
      self.data_cleansing = attributes[:data_cleansing] if attributes.key?(:data_cleansing)
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
