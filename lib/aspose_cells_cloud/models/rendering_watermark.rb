=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="RenderingWatermark.rb">
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

  class RenderingWatermark
    # @return [Float]
    attr_accessor :rotation
    # @return [Integer]
    attr_accessor :scale_to_page_percent
    # @return [Float]
    attr_accessor :opacity
    # @return [BOOLEAN]
    attr_accessor :is_background
    # @return [String]
    attr_accessor :text
    # @return [RenderingFont]
    attr_accessor :font
    # @return [Array<Integer>]
    attr_accessor :image
    # @return [String]
    attr_accessor :h_alignment
    # @return [String]
    attr_accessor :v_alignment
    # @return [Float]
    attr_accessor :offset_x
    # @return [Float]
    attr_accessor :offset_y

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'rotation' => :'Rotation',
        :'scale_to_page_percent' => :'ScaleToPagePercent',
        :'opacity' => :'Opacity',
        :'is_background' => :'IsBackground',
        :'text' => :'Text',
        :'font' => :'Font',
        :'image' => :'Image',
        :'h_alignment' => :'HAlignment',
        :'v_alignment' => :'VAlignment',
        :'offset_x' => :'OffsetX',
        :'offset_y' => :'OffsetY',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'rotation' => :'Float',
        :'scale_to_page_percent' => :'Integer',
        :'opacity' => :'Float',
        :'is_background' => :'BOOLEAN',
        :'text' => :'String',
        :'font' => :'RenderingFont',
        :'image' => :'Array<Integer>',
        :'h_alignment' => :'String',
        :'v_alignment' => :'String',
        :'offset_x' => :'Float',
        :'offset_y' => :'Float',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.rotation = attributes[:rotation] if attributes.key?(:rotation)
      self.scale_to_page_percent = attributes[:scale_to_page_percent] if attributes.key?(:scale_to_page_percent)
      self.opacity = attributes[:opacity] if attributes.key?(:opacity)
      self.is_background = attributes[:is_background] if attributes.key?(:is_background)
      self.text = attributes[:text] if attributes.key?(:text)
      self.font = attributes[:font] if attributes.key?(:font)
      self.image = attributes[:image] if attributes.key?(:image)
      self.h_alignment = attributes[:h_alignment] if attributes.key?(:h_alignment)
      self.v_alignment = attributes[:v_alignment] if attributes.key?(:v_alignment)
      self.offset_x = attributes[:offset_x] if attributes.key?(:offset_x)
      self.offset_y = attributes[:offset_y] if attributes.key?(:offset_y)
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
