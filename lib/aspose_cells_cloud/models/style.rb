=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Style.rb">
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

  # Represents display style of excel document,such as font,color,alignment,border,etc.            The Style object contains all style attributes (font, number format, alignment, and so on) as properties.
  class Style
    # Gets a  object.
    # @return [Font]
    attr_accessor :font
    # Gets or sets the name of the style.
    # @return [String]
    attr_accessor :name
    # Gets and sets the culture-dependent pattern string for number format.             If no number format has been set for this object, null will be returned.             If number format is builtin, the pattern string corresponding to the builtin number will be returned.
    # @return [String]
    attr_accessor :culture_custom
    # Represents the custom number format string of this style object.             If the custom number format is not set(For example, the number format is builtin), "" will be returned.
    # @return [String]
    attr_accessor :custom
    # Gets or sets a style's background color.
    # @return [Color]
    attr_accessor :background_color
    # Gets or sets a style's foreground color.
    # @return [Color]
    attr_accessor :foreground_color
    # Represents if the formula will be hidden when the worksheet is protected.
    # @return [BOOLEAN]
    attr_accessor :is_formula_hidden
    # Indicates whether the number format is a date format.
    # @return [BOOLEAN]
    attr_accessor :is_date_time
    # Gets or sets a value indicating whether the text within a cell is wrapped.
    # @return [BOOLEAN]
    attr_accessor :is_text_wrapped
    # Indicates whether the cell shading is a gradient pattern.
    # @return [BOOLEAN]
    attr_accessor :is_gradient
    # Gets or sets a value indicating whether a cell can be modified or not.
    # @return [BOOLEAN]
    attr_accessor :is_locked
    # Indicates whether the number format is a percent format.
    # @return [BOOLEAN]
    attr_accessor :is_percent
    # Represents if text automatically shrinks to fit in the available column width.
    # @return [BOOLEAN]
    attr_accessor :shrink_to_fit
    # Represents the indent level for the cell or range. Can only be an integer from 0 to 250.
    # @return [Integer]
    attr_accessor :indent_level
    # Gets or sets the display format of numbers and dates. The formatting patterns are different for different regions.
    # @return [Integer]
    attr_accessor :number
    # Represents text rotation angle.
    # @return [Integer]
    attr_accessor :rotation_angle
    # Gets or sets the cell background pattern type.
    # @return [String]
    attr_accessor :pattern
    # Represents text reading order.
    # @return [String]
    attr_accessor :text_direction
    # Gets or sets the vertical alignment type of the text in a cell.
    # @return [String]
    attr_accessor :vertical_alignment
    # Gets or sets the horizontal alignment type of the text in a cell.
    # @return [String]
    attr_accessor :horizontal_alignment
    # A public property named `BorderCollection` that is a list of `Border` objects.
    # @return [Array<Border>]
    attr_accessor :border_collection
    # Gets and sets the background theme color.
    # @return [ThemeColor]
    attr_accessor :background_theme_color
    # Gets and sets the foreground theme color.
    # @return [ThemeColor]
    attr_accessor :foreground_theme_color

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'font' => :'Font',
        :'name' => :'Name',
        :'culture_custom' => :'CultureCustom',
        :'custom' => :'Custom',
        :'background_color' => :'BackgroundColor',
        :'foreground_color' => :'ForegroundColor',
        :'is_formula_hidden' => :'IsFormulaHidden',
        :'is_date_time' => :'IsDateTime',
        :'is_text_wrapped' => :'IsTextWrapped',
        :'is_gradient' => :'IsGradient',
        :'is_locked' => :'IsLocked',
        :'is_percent' => :'IsPercent',
        :'shrink_to_fit' => :'ShrinkToFit',
        :'indent_level' => :'IndentLevel',
        :'number' => :'Number',
        :'rotation_angle' => :'RotationAngle',
        :'pattern' => :'Pattern',
        :'text_direction' => :'TextDirection',
        :'vertical_alignment' => :'VerticalAlignment',
        :'horizontal_alignment' => :'HorizontalAlignment',
        :'border_collection' => :'BorderCollection',
        :'background_theme_color' => :'BackgroundThemeColor',
        :'foreground_theme_color' => :'ForegroundThemeColor',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'font' => :'Font',
        :'name' => :'String',
        :'culture_custom' => :'String',
        :'custom' => :'String',
        :'background_color' => :'Color',
        :'foreground_color' => :'Color',
        :'is_formula_hidden' => :'BOOLEAN',
        :'is_date_time' => :'BOOLEAN',
        :'is_text_wrapped' => :'BOOLEAN',
        :'is_gradient' => :'BOOLEAN',
        :'is_locked' => :'BOOLEAN',
        :'is_percent' => :'BOOLEAN',
        :'shrink_to_fit' => :'BOOLEAN',
        :'indent_level' => :'Integer',
        :'number' => :'Integer',
        :'rotation_angle' => :'Integer',
        :'pattern' => :'String',
        :'text_direction' => :'String',
        :'vertical_alignment' => :'String',
        :'horizontal_alignment' => :'String',
        :'border_collection' => :'Array<Border>',
        :'background_theme_color' => :'ThemeColor',
        :'foreground_theme_color' => :'ThemeColor',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.font = attributes[:font] if attributes.key?(:font)
      self.name = attributes[:name] if attributes.key?(:name)
      self.culture_custom = attributes[:culture_custom] if attributes.key?(:culture_custom)
      self.custom = attributes[:custom] if attributes.key?(:custom)
      self.background_color = attributes[:background_color] if attributes.key?(:background_color)
      self.foreground_color = attributes[:foreground_color] if attributes.key?(:foreground_color)
      self.is_formula_hidden = attributes[:is_formula_hidden] if attributes.key?(:is_formula_hidden)
      self.is_date_time = attributes[:is_date_time] if attributes.key?(:is_date_time)
      self.is_text_wrapped = attributes[:is_text_wrapped] if attributes.key?(:is_text_wrapped)
      self.is_gradient = attributes[:is_gradient] if attributes.key?(:is_gradient)
      self.is_locked = attributes[:is_locked] if attributes.key?(:is_locked)
      self.is_percent = attributes[:is_percent] if attributes.key?(:is_percent)
      self.shrink_to_fit = attributes[:shrink_to_fit] if attributes.key?(:shrink_to_fit)
      self.indent_level = attributes[:indent_level] if attributes.key?(:indent_level)
      self.number = attributes[:number] if attributes.key?(:number)
      self.rotation_angle = attributes[:rotation_angle] if attributes.key?(:rotation_angle)
      self.pattern = attributes[:pattern] if attributes.key?(:pattern)
      self.text_direction = attributes[:text_direction] if attributes.key?(:text_direction)
      self.vertical_alignment = attributes[:vertical_alignment] if attributes.key?(:vertical_alignment)
      self.horizontal_alignment = attributes[:horizontal_alignment] if attributes.key?(:horizontal_alignment)
      self.border_collection = attributes[:border_collection] if attributes.key?(:border_collection)
      self.background_theme_color = attributes[:background_theme_color] if attributes.key?(:background_theme_color)
      self.foreground_theme_color = attributes[:foreground_theme_color] if attributes.key?(:foreground_theme_color)
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
