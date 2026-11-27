=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="BatchSplitRequest.rb">
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

  # Class summary: Identifying key features of a statistical dataset and methods for data analysis.
  class BatchSplitRequest
    # The directory stores files that need to format conversion.
    # @return [String]
    attr_accessor :source_folder
    # Aspose Cloud storage name
    # @return [String]
    attr_accessor :source_storage
    # Indicates the match condition that needs to be processed for the file name.
    # @return [MatchConditionRequest]
    attr_accessor :match_condition
    # Output file format
    # @return [String]
    attr_accessor :format
    # From worksheet index of workbook.
    # @return [Integer]
    attr_accessor :from_index
    # To worksheet index of workbook.
    # @return [Integer]
    attr_accessor :to_index
    # The directory that stores files whose format conversion was successful.
    # @return [String]
    attr_accessor :out_folder
    # Aspose Cloud storage name.
    # @return [String]
    attr_accessor :out_storage
    # The regional settings for workbook.
    # @return [String]
    attr_accessor :region
    # Indicates save options.
    # @return [SaveOptions]
    attr_accessor :save_options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'source_folder' => :'SourceFolder',
        :'source_storage' => :'SourceStorage',
        :'match_condition' => :'MatchCondition',
        :'format' => :'Format',
        :'from_index' => :'FromIndex',
        :'to_index' => :'ToIndex',
        :'out_folder' => :'OutFolder',
        :'out_storage' => :'OutStorage',
        :'region' => :'Region',
        :'save_options' => :'SaveOptions',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'source_folder' => :'String',
        :'source_storage' => :'String',
        :'match_condition' => :'MatchConditionRequest',
        :'format' => :'String',
        :'from_index' => :'Integer',
        :'to_index' => :'Integer',
        :'out_folder' => :'String',
        :'out_storage' => :'String',
        :'region' => :'String',
        :'save_options' => :'SaveOptions',
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
      self.format = attributes[:format] if attributes.key?(:format)
      self.from_index = attributes[:from_index] if attributes.key?(:from_index)
      self.to_index = attributes[:to_index] if attributes.key?(:to_index)
      self.out_folder = attributes[:out_folder] if attributes.key?(:out_folder)
      self.out_storage = attributes[:out_storage] if attributes.key?(:out_storage)
      self.region = attributes[:region] if attributes.key?(:region)
      self.save_options = attributes[:save_options] if attributes.key?(:save_options)
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
