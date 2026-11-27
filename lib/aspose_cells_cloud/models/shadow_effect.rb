=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="ShadowEffect.rb">
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

  # This class specifies the shadow effect of the chart element or shape.
  class ShadowEffect
    # Gets and sets the lighting angle. Range from 0 to 359.9 degrees.
    # @return [Float]
    attr_accessor :angle
    # Gets and sets the blur of the shadow. Range from 0 to 100 points.
    # @return [Float]
    attr_accessor :blur
    # Gets and sets the color of the shadow.
    # @return [CellsColor]
    attr_accessor :color
    # Gets and sets the distance of the shadow. Range from 0 to 200 points.
    # @return [Float]
    attr_accessor :distance
    # Gets and sets the preset shadow type of the shadow.
    # @return [String]
    attr_accessor :preset_type
    # Gets and sets the size of the shadow. Range from 0 to 2.0.              Meaningless in inner shadow.
    # @return [Float]
    attr_accessor :size
    # Gets and sets the degree of transparency of the shadow. Range from 0.0 (opaque) to 1.0 (clear).
    # @return [Float]
    attr_accessor :transparency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'angle' => :'Angle',
        :'blur' => :'Blur',
        :'color' => :'Color',
        :'distance' => :'Distance',
        :'preset_type' => :'PresetType',
        :'size' => :'Size',
        :'transparency' => :'Transparency',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'angle' => :'Float',
        :'blur' => :'Float',
        :'color' => :'CellsColor',
        :'distance' => :'Float',
        :'preset_type' => :'String',
        :'size' => :'Float',
        :'transparency' => :'Float',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.angle = attributes[:angle] if attributes.key?(:angle)
      self.blur = attributes[:blur] if attributes.key?(:blur)
      self.color = attributes[:color] if attributes.key?(:color)
      self.distance = attributes[:distance] if attributes.key?(:distance)
      self.preset_type = attributes[:preset_type] if attributes.key?(:preset_type)
      self.size = attributes[:size] if attributes.key?(:size)
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
