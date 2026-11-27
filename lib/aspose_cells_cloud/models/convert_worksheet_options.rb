=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ConvertWorksheetOptions.rb">
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
require_relative 'base_operate_options'

module AsposeCellsCloud

  class ConvertWorksheetOptions < BaseOperateOptions
    # The class has a public property named "Name" with a getter and setter method.
    # @return [String]
    attr_accessor :name
    # @return [DataSource]
    attr_accessor :data_source
    # @return [FileInfo]
    attr_accessor :file_info
    # @return [String]
    attr_accessor :worksheet_name
    # @return [PageSetup]
    attr_accessor :page_setup
    # @return [ImageOrPrintOptions]
    attr_accessor :image_or_print_options
    # @return [String]
    attr_accessor :convert_format
    # @return [BOOLEAN]
    attr_accessor :check_excel_restriction
    # @return [String]
    attr_accessor :region

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'data_source' => :'DataSource',
        :'file_info' => :'FileInfo',
        :'worksheet_name' => :'WorksheetName',
        :'page_setup' => :'PageSetup',
        :'image_or_print_options' => :'ImageOrPrintOptions',
        :'convert_format' => :'ConvertFormat',
        :'check_excel_restriction' => :'CheckExcelRestriction',
        :'region' => :'Region',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'data_source' => :'DataSource',
        :'file_info' => :'FileInfo',
        :'worksheet_name' => :'String',
        :'page_setup' => :'PageSetup',
        :'image_or_print_options' => :'ImageOrPrintOptions',
        :'convert_format' => :'String',
        :'check_excel_restriction' => :'BOOLEAN',
        :'region' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.name = attributes[:name] if attributes.key?(:name)
      self.data_source = attributes[:data_source] if attributes.key?(:data_source)
      self.file_info = attributes[:file_info] if attributes.key?(:file_info)
      self.worksheet_name = attributes[:worksheet_name] if attributes.key?(:worksheet_name)
      self.page_setup = attributes[:page_setup] if attributes.key?(:page_setup)
      self.image_or_print_options = attributes[:image_or_print_options] if attributes.key?(:image_or_print_options)
      self.convert_format = attributes[:convert_format] if attributes.key?(:convert_format)
      self.check_excel_restriction = attributes[:check_excel_restriction] if attributes.key?(:check_excel_restriction)
      self.region = attributes[:region] if attributes.key?(:region)
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
