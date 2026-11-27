=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="TextureFill.rb">
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

  # Encapsulates the object that represents texture fill format
  class TextureFill
    # Gets and sets the texture type
    # @return [String]
    attr_accessor :type
    # Returns or sets the degree of transparency of the area as a value from 0.0 (opaque) through 1.0 (clear).
    # @return [Float]
    attr_accessor :transparency
    # Gets and sets the picture format scale.
    # @return [Float]
    attr_accessor :scale
    # Gets or sets tile picture option.
    # @return [TilePicOption]
    attr_accessor :tile_pic_option
    # Gets or sets picture format option.
    # @return [PicFormatOption]
    attr_accessor :pic_format_option
    # The class has a public property named "Image" of type LinkElement that can be accessed and set.
    # @return [LinkElement]
    attr_accessor :image

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'Type',
        :'transparency' => :'Transparency',
        :'scale' => :'Scale',
        :'tile_pic_option' => :'TilePicOption',
        :'pic_format_option' => :'PicFormatOption',
        :'image' => :'Image',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'transparency' => :'Float',
        :'scale' => :'Float',
        :'tile_pic_option' => :'TilePicOption',
        :'pic_format_option' => :'PicFormatOption',
        :'image' => :'LinkElement',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.type = attributes[:type] if attributes.key?(:type)
      self.transparency = attributes[:transparency] if attributes.key?(:transparency)
      self.scale = attributes[:scale] if attributes.key?(:scale)
      self.tile_pic_option = attributes[:tile_pic_option] if attributes.key?(:tile_pic_option)
      self.pic_format_option = attributes[:pic_format_option] if attributes.key?(:pic_format_option)
      self.image = attributes[:image] if attributes.key?(:image)
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
