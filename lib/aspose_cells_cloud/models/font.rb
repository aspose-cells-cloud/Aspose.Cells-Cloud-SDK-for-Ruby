=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Font.rb">
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

  # Encapsulates the font object used in a spreadsheet.
  class Font
    # Gets or sets the  of the font.
    # @return [Color]
    attr_accessor :color
    # Gets and sets the double size of the font.
    # @return [Float]
    attr_accessor :double_size
    # Gets or sets a value indicating whether the font is bold.
    # @return [BOOLEAN]
    attr_accessor :is_bold
    # Gets or sets a value indicating whether the font is italic.
    # @return [BOOLEAN]
    attr_accessor :is_italic
    # Gets or sets a value indicating whether the font is single strikeout.
    # @return [BOOLEAN]
    attr_accessor :is_strikeout
    # Gets or sets a value indicating whether the font is subscript.
    # @return [BOOLEAN]
    attr_accessor :is_subscript
    # Gets or sets a value indicating whether the font is super script.
    # @return [BOOLEAN]
    attr_accessor :is_superscript
    # Gets  or sets the name of the .
    # @return [String]
    attr_accessor :name
    # Gets or sets the size of the font.
    # @return [Integer]
    attr_accessor :size
    # Gets or sets the font underline type.
    # @return [String]
    attr_accessor :underline

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'color' => :'Color',
        :'double_size' => :'DoubleSize',
        :'is_bold' => :'IsBold',
        :'is_italic' => :'IsItalic',
        :'is_strikeout' => :'IsStrikeout',
        :'is_subscript' => :'IsSubscript',
        :'is_superscript' => :'IsSuperscript',
        :'name' => :'Name',
        :'size' => :'Size',
        :'underline' => :'Underline',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'color' => :'Color',
        :'double_size' => :'Float',
        :'is_bold' => :'BOOLEAN',
        :'is_italic' => :'BOOLEAN',
        :'is_strikeout' => :'BOOLEAN',
        :'is_subscript' => :'BOOLEAN',
        :'is_superscript' => :'BOOLEAN',
        :'name' => :'String',
        :'size' => :'Integer',
        :'underline' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.color = attributes[:color] if attributes.key?(:color)
      self.double_size = attributes[:double_size] if attributes.key?(:double_size)
      self.is_bold = attributes[:is_bold] if attributes.key?(:is_bold)
      self.is_italic = attributes[:is_italic] if attributes.key?(:is_italic)
      self.is_strikeout = attributes[:is_strikeout] if attributes.key?(:is_strikeout)
      self.is_subscript = attributes[:is_subscript] if attributes.key?(:is_subscript)
      self.is_superscript = attributes[:is_superscript] if attributes.key?(:is_superscript)
      self.name = attributes[:name] if attributes.key?(:name)
      self.size = attributes[:size] if attributes.key?(:size)
      self.underline = attributes[:underline] if attributes.key?(:underline)
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
