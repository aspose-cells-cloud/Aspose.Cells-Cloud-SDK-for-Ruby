=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="SplitWorkbookTaskParameter.rb">
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

  # Represents split workbook task parameter.
  class SplitWorkbookTaskParameter < TaskParameter
    # Represents data source of task object.
    # @return [FileSource]
    attr_accessor :workbook
    # Represents data source of task object.
    # @return [FileSource]
    attr_accessor :destination_file_position
    # Represents destination data source.
    # @return [DataSource]
    attr_accessor :data_source
    # Represents destination data source.
    # @return [DataSource]
    attr_accessor :target_data_source
    # Represents destination data file format.
    # @return [String]
    attr_accessor :destination_file_format
    # SheetName /NewGuid
    # @return [String]
    attr_accessor :split_name_rule
    # When destination file format is image , vertical resolution can not be null.
    # @return [Integer]
    attr_accessor :vertical_resolution
    # When destination file format is image , horizontal resolution can not be null.
    # @return [Integer]
    attr_accessor :horizontal_resolution

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'workbook' => :'Workbook',
        :'destination_file_position' => :'DestinationFilePosition',
        :'data_source' => :'DataSource',
        :'target_data_source' => :'TargetDataSource',
        :'destination_file_format' => :'DestinationFileFormat',
        :'split_name_rule' => :'SplitNameRule',
        :'vertical_resolution' => :'VerticalResolution',
        :'horizontal_resolution' => :'HorizontalResolution',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'workbook' => :'FileSource',
        :'destination_file_position' => :'FileSource',
        :'data_source' => :'DataSource',
        :'target_data_source' => :'DataSource',
        :'destination_file_format' => :'String',
        :'split_name_rule' => :'String',
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
      self.workbook = attributes[:workbook] if attributes.key?(:workbook)
      self.destination_file_position = attributes[:destination_file_position] if attributes.key?(:destination_file_position)
      self.data_source = attributes[:data_source] if attributes.key?(:data_source)
      self.target_data_source = attributes[:target_data_source] if attributes.key?(:target_data_source)
      self.destination_file_format = attributes[:destination_file_format] if attributes.key?(:destination_file_format)
      self.split_name_rule = attributes[:split_name_rule] if attributes.key?(:split_name_rule)
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
