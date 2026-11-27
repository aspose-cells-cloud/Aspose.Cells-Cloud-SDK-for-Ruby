=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Workbook.rb">
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

  # Represents a root object to create an Excel spreadsheet.
  class Workbook
    # Gets and sets the current file name.
    # @return [String]
    attr_accessor :file_name
    # A property of type List Link  named Links is specified to be serialized as an XmlElement with the tag "link".
    # @return [Array<Link>]
    attr_accessor :links
    # Gets the  collection in the spreadsheet.
    # @return [LinkElement]
    attr_accessor :worksheets
    # Gets or sets the default  object of the workbook.
    # @return [LinkElement]
    attr_accessor :default_style
    # @return [LinkElement]
    attr_accessor :document_properties
    # @return [LinkElement]
    attr_accessor :names
    # Represents the workbook settings.
    # @return [LinkElement]
    attr_accessor :settings
    # @return [String]
    attr_accessor :is_write_protected
    # @return [String]
    attr_accessor :is_protected
    # @return [String]
    attr_accessor :is_encryption
    # @return [String]
    attr_accessor :password

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file_name' => :'FileName',
        :'links' => :'Links',
        :'worksheets' => :'Worksheets',
        :'default_style' => :'DefaultStyle',
        :'document_properties' => :'DocumentProperties',
        :'names' => :'Names',
        :'settings' => :'Settings',
        :'is_write_protected' => :'IsWriteProtected',
        :'is_protected' => :'IsProtected',
        :'is_encryption' => :'IsEncryption',
        :'password' => :'Password',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'file_name' => :'String',
        :'links' => :'Array<Link>',
        :'worksheets' => :'LinkElement',
        :'default_style' => :'LinkElement',
        :'document_properties' => :'LinkElement',
        :'names' => :'LinkElement',
        :'settings' => :'LinkElement',
        :'is_write_protected' => :'String',
        :'is_protected' => :'String',
        :'is_encryption' => :'String',
        :'password' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.file_name = attributes[:file_name] if attributes.key?(:file_name)
      self.links = attributes[:links] if attributes.key?(:links)
      self.worksheets = attributes[:worksheets] if attributes.key?(:worksheets)
      self.default_style = attributes[:default_style] if attributes.key?(:default_style)
      self.document_properties = attributes[:document_properties] if attributes.key?(:document_properties)
      self.names = attributes[:names] if attributes.key?(:names)
      self.settings = attributes[:settings] if attributes.key?(:settings)
      self.is_write_protected = attributes[:is_write_protected] if attributes.key?(:is_write_protected)
      self.is_protected = attributes[:is_protected] if attributes.key?(:is_protected)
      self.is_encryption = attributes[:is_encryption] if attributes.key?(:is_encryption)
      self.password = attributes[:password] if attributes.key?(:password)
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
