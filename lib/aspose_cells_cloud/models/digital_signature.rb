=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="DigitalSignature.rb">
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

  # Signature in file.
  class DigitalSignature
    # The purpose to signature.
    # @return [String]
    attr_accessor :comments
    # The time when the document was signed.
    # @return [String]
    attr_accessor :sign_time
    # Specifies a GUID which can be cross-referenced with the GUID of the signature line stored in the document content. Default value is Empty (all zeroes) Guid.
    # @return [String]
    attr_accessor :id
    # Specifies the text of actual signature in the digital signature. Default value is Empty.
    # @return [String]
    attr_accessor :password
    # Specifies an image for the digital signature. Default value is null.
    # @return [Array<Integer>]
    attr_accessor :image
    # Specifies the class ID of the signature provider. Default value is Empty (all zeroes) Guid.
    # @return [String]
    attr_accessor :provider_id
    # If this digital signature is valid and the document has not been tampered with, this value will be true.
    # @return [BOOLEAN]
    attr_accessor :is_valid
    # XAdES type. Default value is None(XAdES is off).
    # @return [String]
    attr_accessor :x_ad_es_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'comments' => :'Comments',
        :'sign_time' => :'SignTime',
        :'id' => :'Id',
        :'password' => :'Password',
        :'image' => :'Image',
        :'provider_id' => :'ProviderId',
        :'is_valid' => :'IsValid',
        :'x_ad_es_type' => :'XAdESType',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'comments' => :'String',
        :'sign_time' => :'String',
        :'id' => :'String',
        :'password' => :'String',
        :'image' => :'Array<Integer>',
        :'provider_id' => :'String',
        :'is_valid' => :'BOOLEAN',
        :'x_ad_es_type' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.comments = attributes[:comments] if attributes.key?(:comments)
      self.sign_time = attributes[:sign_time] if attributes.key?(:sign_time)
      self.id = attributes[:id] if attributes.key?(:id)
      self.password = attributes[:password] if attributes.key?(:password)
      self.image = attributes[:image] if attributes.key?(:image)
      self.provider_id = attributes[:provider_id] if attributes.key?(:provider_id)
      self.is_valid = attributes[:is_valid] if attributes.key?(:is_valid)
      self.x_ad_es_type = attributes[:x_ad_es_type] if attributes.key?(:x_ad_es_type)
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
