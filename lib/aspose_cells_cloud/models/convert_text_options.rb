=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ConvertTextOptions.rb">
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

  # Class summary: The features of the new smartphone include a high-resolution display, multiple camera lenses for versatile photography, a fast processor for seamless performance, and a larger battery for extended usage time.
  class ConvertTextOptions < BaseOperateOptions
    # The class has a public property called "Name" of type string that can be accessed and modified.
    # @return [String]
    attr_accessor :name
    # Represents data source.  There are three types of data, they are CloudFileSystem, RequestFiles, HttpUri.
    # @return [DataSource]
    attr_accessor :data_source
    # Represents file information. Include of filename, filesize, and file content(base64String).
    # @return [FileInfo]
    attr_accessor :file_info
    # Specifies the range of cells within the worksheet where the spreadsheet operations will be performed. This parameter allows users to define the exact area to be processed, ensuring that operations are applied only to the designated cells.
    # @return [ScopeOptions]
    attr_accessor :scope_options
    # @return [String]
    attr_accessor :convert_text_type
    # @return [String]
    attr_accessor :source_characters
    # @return [String]
    attr_accessor :target_characters

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'data_source' => :'DataSource',
        :'file_info' => :'FileInfo',
        :'scope_options' => :'ScopeOptions',
        :'convert_text_type' => :'ConvertTextType',
        :'source_characters' => :'SourceCharacters',
        :'target_characters' => :'TargetCharacters',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'data_source' => :'DataSource',
        :'file_info' => :'FileInfo',
        :'scope_options' => :'ScopeOptions',
        :'convert_text_type' => :'String',
        :'source_characters' => :'String',
        :'target_characters' => :'String',
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
      self.scope_options = attributes[:scope_options] if attributes.key?(:scope_options)
      self.convert_text_type = attributes[:convert_text_type] if attributes.key?(:convert_text_type)
      self.source_characters = attributes[:source_characters] if attributes.key?(:source_characters)
      self.target_characters = attributes[:target_characters] if attributes.key?(:target_characters)
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
