=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="IconSet.rb">
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

  # Describe the IconSet conditional formatting rule. This conditional formatting     rule applies icons to cells according to their values.
  class IconSet
    # Get the from the collection
    # @return [Array<ConditionalFormattingIcon>]
    attr_accessor :cf_icons
    # Get the CFValueObjects instance.
    # @return [Array<ConditionalFormattingValue>]
    attr_accessor :cfvos
    # Indicates whether the icon set is custom.             Default value is false.
    # @return [BOOLEAN]
    attr_accessor :is_custom
    # Get or set the flag indicating whether to reverses the default order of the icons in this icon set.             Default value is false.
    # @return [BOOLEAN]
    attr_accessor :reverse
    # Get or set the flag indicating whether to show the values of the cells on which this icon set is applied.             Default value is true.
    # @return [BOOLEAN]
    attr_accessor :show_value
    # Get or Set the icon set type to display.  Setting the type will auto check    if the current Cfvos's count is accord with the new type. If not accord,    old Cfvos will be cleaned and default Cfvos will be added.
    # @return [String]
    attr_accessor :icon_set_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cf_icons' => :'CfIcons',
        :'cfvos' => :'Cfvos',
        :'is_custom' => :'IsCustom',
        :'reverse' => :'Reverse',
        :'show_value' => :'ShowValue',
        :'icon_set_type' => :'IconSetType',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'cf_icons' => :'Array<ConditionalFormattingIcon>',
        :'cfvos' => :'Array<ConditionalFormattingValue>',
        :'is_custom' => :'BOOLEAN',
        :'reverse' => :'BOOLEAN',
        :'show_value' => :'BOOLEAN',
        :'icon_set_type' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.cf_icons = attributes[:cf_icons] if attributes.key?(:cf_icons)
      self.cfvos = attributes[:cfvos] if attributes.key?(:cfvos)
      self.is_custom = attributes[:is_custom] if attributes.key?(:is_custom)
      self.reverse = attributes[:reverse] if attributes.key?(:reverse)
      self.show_value = attributes[:show_value] if attributes.key?(:show_value)
      self.icon_set_type = attributes[:icon_set_type] if attributes.key?(:icon_set_type)
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
