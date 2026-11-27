=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PdfSecurityOptions.rb">
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

  class PdfSecurityOptions
    # @return [BOOLEAN]
    attr_accessor :annotations_permission
    # @return [BOOLEAN]
    attr_accessor :assemble_document_permission
    # @return [BOOLEAN]
    attr_accessor :extract_content_permission
    # @return [BOOLEAN]
    attr_accessor :fill_forms_permission
    # @return [BOOLEAN]
    attr_accessor :full_quality_print_permission
    # @return [BOOLEAN]
    attr_accessor :modify_document_permission
    # @return [String]
    attr_accessor :owner_password
    # @return [BOOLEAN]
    attr_accessor :print_permission
    # @return [String]
    attr_accessor :user_password

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'annotations_permission' => :'AnnotationsPermission',
        :'assemble_document_permission' => :'AssembleDocumentPermission',
        :'extract_content_permission' => :'ExtractContentPermission',
        :'fill_forms_permission' => :'FillFormsPermission',
        :'full_quality_print_permission' => :'FullQualityPrintPermission',
        :'modify_document_permission' => :'ModifyDocumentPermission',
        :'owner_password' => :'OwnerPassword',
        :'print_permission' => :'PrintPermission',
        :'user_password' => :'UserPassword',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'annotations_permission' => :'BOOLEAN',
        :'assemble_document_permission' => :'BOOLEAN',
        :'extract_content_permission' => :'BOOLEAN',
        :'fill_forms_permission' => :'BOOLEAN',
        :'full_quality_print_permission' => :'BOOLEAN',
        :'modify_document_permission' => :'BOOLEAN',
        :'owner_password' => :'String',
        :'print_permission' => :'BOOLEAN',
        :'user_password' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.annotations_permission = attributes[:annotations_permission] if attributes.key?(:annotations_permission)
      self.assemble_document_permission = attributes[:assemble_document_permission] if attributes.key?(:assemble_document_permission)
      self.extract_content_permission = attributes[:extract_content_permission] if attributes.key?(:extract_content_permission)
      self.fill_forms_permission = attributes[:fill_forms_permission] if attributes.key?(:fill_forms_permission)
      self.full_quality_print_permission = attributes[:full_quality_print_permission] if attributes.key?(:full_quality_print_permission)
      self.modify_document_permission = attributes[:modify_document_permission] if attributes.key?(:modify_document_permission)
      self.owner_password = attributes[:owner_password] if attributes.key?(:owner_password)
      self.print_permission = attributes[:print_permission] if attributes.key?(:print_permission)
      self.user_password = attributes[:user_password] if attributes.key?(:user_password)
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
