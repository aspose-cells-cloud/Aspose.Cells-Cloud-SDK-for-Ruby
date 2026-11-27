=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ProtectWorkbookRequest.rb">
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

  # Indicates protect workbook request
  class ProtectWorkbookRequest
    # Indicates aways open read-only.
    # @return [BOOLEAN]
    attr_accessor :aways_open_read_only
    # Indicates encrypt with password.
    # @return [String]
    attr_accessor :encrypt_with_password
    # Represents the various types of protection options available for a worksheet.
    # @return [Protection]
    attr_accessor :protect_current_sheet
    # Represents the various types of protection options available for all worksheets.
    # @return [Protection]
    attr_accessor :protect_all_sheets
    # Indicates protect workbook structure. All, Contents, Objects, Scenarios, Structure, Windows, and None.
    # @return [String]
    attr_accessor :protect_workbook_structure
    # Indicates signature in file.
    # @return [DigitalSignature]
    attr_accessor :digital_signature
    # Indicates mark as final.
    # @return [BOOLEAN]
    attr_accessor :mark_as_final

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'aways_open_read_only' => :'AwaysOpenReadOnly',
        :'encrypt_with_password' => :'EncryptWithPassword',
        :'protect_current_sheet' => :'ProtectCurrentSheet',
        :'protect_all_sheets' => :'ProtectAllSheets',
        :'protect_workbook_structure' => :'ProtectWorkbookStructure',
        :'digital_signature' => :'DigitalSignature',
        :'mark_as_final' => :'MarkAsFinal',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'aways_open_read_only' => :'BOOLEAN',
        :'encrypt_with_password' => :'String',
        :'protect_current_sheet' => :'Protection',
        :'protect_all_sheets' => :'Protection',
        :'protect_workbook_structure' => :'String',
        :'digital_signature' => :'DigitalSignature',
        :'mark_as_final' => :'BOOLEAN',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.aways_open_read_only = attributes[:aways_open_read_only] if attributes.key?(:aways_open_read_only)
      self.encrypt_with_password = attributes[:encrypt_with_password] if attributes.key?(:encrypt_with_password)
      self.protect_current_sheet = attributes[:protect_current_sheet] if attributes.key?(:protect_current_sheet)
      self.protect_all_sheets = attributes[:protect_all_sheets] if attributes.key?(:protect_all_sheets)
      self.protect_workbook_structure = attributes[:protect_workbook_structure] if attributes.key?(:protect_workbook_structure)
      self.digital_signature = attributes[:digital_signature] if attributes.key?(:digital_signature)
      self.mark_as_final = attributes[:mark_as_final] if attributes.key?(:mark_as_final)
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
