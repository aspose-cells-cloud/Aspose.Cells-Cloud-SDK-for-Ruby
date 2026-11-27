=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ConvertWorksheetTaskParameter.rb">
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
require_relative 'task_parameter'

module AsposeCellsCloud

  # Represents convert worksheet task parameter.
  class ConvertWorksheetTaskParameter < TaskParameter
    # Represents data source of task object.
    # @return [DataSource]
    attr_accessor :data_source
    # Represents data source of task object.
    # @return [FileSource]
    attr_accessor :workbook
    # Represents worksheet.
    # @return [String]
    attr_accessor :sheet
    # Represents destination data source.
    # @return [DataSource]
    attr_accessor :target_data_source
    # Represents destination data source.
    # @return [FileSource]
    attr_accessor :target
    # Represents destination data format.
    # @return [String]
    attr_accessor :format
    # Represents converted data area.
    # @return [String]
    attr_accessor :area
    # Represents converted page index.
    # @return [Integer]
    attr_accessor :page_index
    # Represents vertical resolution.
    # @return [Integer]
    attr_accessor :vertical_resolution
    # Represents horizontal resolution.
    # @return [Integer]
    attr_accessor :horizontal_resolution

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'data_source' => :'DataSource',
        :'workbook' => :'Workbook',
        :'sheet' => :'Sheet',
        :'target_data_source' => :'TargetDataSource',
        :'target' => :'Target',
        :'format' => :'Format',
        :'area' => :'Area',
        :'page_index' => :'PageIndex',
        :'vertical_resolution' => :'VerticalResolution',
        :'horizontal_resolution' => :'HorizontalResolution',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'data_source' => :'DataSource',
        :'workbook' => :'FileSource',
        :'sheet' => :'String',
        :'target_data_source' => :'DataSource',
        :'target' => :'FileSource',
        :'format' => :'String',
        :'area' => :'String',
        :'page_index' => :'Integer',
        :'vertical_resolution' => :'Integer',
        :'horizontal_resolution' => :'Integer',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.data_source = attributes[:data_source] if attributes.key?(:data_source)
      self.workbook = attributes[:workbook] if attributes.key?(:workbook)
      self.sheet = attributes[:sheet] if attributes.key?(:sheet)
      self.target_data_source = attributes[:target_data_source] if attributes.key?(:target_data_source)
      self.target = attributes[:target] if attributes.key?(:target)
      self.format = attributes[:format] if attributes.key?(:format)
      self.area = attributes[:area] if attributes.key?(:area)
      self.page_index = attributes[:page_index] if attributes.key?(:page_index)
      self.vertical_resolution = attributes[:vertical_resolution] if attributes.key?(:vertical_resolution)
      self.horizontal_resolution = attributes[:horizontal_resolution] if attributes.key?(:horizontal_resolution)
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
