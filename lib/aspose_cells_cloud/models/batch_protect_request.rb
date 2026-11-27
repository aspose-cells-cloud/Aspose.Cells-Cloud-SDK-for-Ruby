=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="BatchProtectRequest.rb">
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

  # Indicates batch protect file request
  class BatchProtectRequest
    # The directory stores files that need to format conversion.
    # @return [String]
    attr_accessor :source_folder
    # Aspose Cloud storage name
    # @return [String]
    attr_accessor :source_storage
    # Indicates the match condition that needs to be processed for the file name.
    # @return [MatchConditionRequest]
    attr_accessor :match_condition
    # This property defines the protection type of an object.
    # @return [String]
    attr_accessor :protection_type
    # @return [String]
    attr_accessor :password
    # The directory that stores files whose format conversion was successful.
    # @return [String]
    attr_accessor :out_folder
    # Aspose Cloud storage name.
    # @return [String]
    attr_accessor :out_storage

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'source_folder' => :'SourceFolder',
        :'source_storage' => :'SourceStorage',
        :'match_condition' => :'MatchCondition',
        :'protection_type' => :'ProtectionType',
        :'password' => :'Password',
        :'out_folder' => :'OutFolder',
        :'out_storage' => :'OutStorage',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'source_folder' => :'String',
        :'source_storage' => :'String',
        :'match_condition' => :'MatchConditionRequest',
        :'protection_type' => :'String',
        :'password' => :'String',
        :'out_folder' => :'String',
        :'out_storage' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.source_folder = attributes[:source_folder] if attributes.key?(:source_folder)
      self.source_storage = attributes[:source_storage] if attributes.key?(:source_storage)
      self.match_condition = attributes[:match_condition] if attributes.key?(:match_condition)
      self.protection_type = attributes[:protection_type] if attributes.key?(:protection_type)
      self.password = attributes[:password] if attributes.key?(:password)
      self.out_folder = attributes[:out_folder] if attributes.key?(:out_folder)
      self.out_storage = attributes[:out_storage] if attributes.key?(:out_storage)
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
