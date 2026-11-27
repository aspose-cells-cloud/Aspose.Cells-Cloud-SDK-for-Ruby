=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Floor.rb">
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
require_relative 'area'

module AsposeCellsCloud

  # Encapsulates the object that represents the floor of a 3-D chart.
  class Floor < Area
    # Gets or sets the border .
    # @return [Line]
    attr_accessor :border
    # @return [Color]
    attr_accessor :background_color
    # @return [FillFormat]
    attr_accessor :fill_format
    # @return [Color]
    attr_accessor :foreground_color
    # @return [String]
    attr_accessor :format
    # @return [BOOLEAN]
    attr_accessor :invert_if_negative
    # @return [Float]
    attr_accessor :transparency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'border' => :'Border',
        :'background_color' => :'BackgroundColor',
        :'fill_format' => :'FillFormat',
        :'foreground_color' => :'ForegroundColor',
        :'format' => :'Format',
        :'invert_if_negative' => :'InvertIfNegative',
        :'transparency' => :'Transparency',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'border' => :'Line',
        :'background_color' => :'Color',
        :'fill_format' => :'FillFormat',
        :'foreground_color' => :'Color',
        :'format' => :'String',
        :'invert_if_negative' => :'BOOLEAN',
        :'transparency' => :'Float',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.border = attributes[:border] if attributes.key?(:border)
      self.background_color = attributes[:background_color] if attributes.key?(:background_color)
      self.fill_format = attributes[:fill_format] if attributes.key?(:fill_format)
      self.foreground_color = attributes[:foreground_color] if attributes.key?(:foreground_color)
      self.format = attributes[:format] if attributes.key?(:format)
      self.invert_if_negative = attributes[:invert_if_negative] if attributes.key?(:invert_if_negative)
      self.transparency = attributes[:transparency] if attributes.key?(:transparency)
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
