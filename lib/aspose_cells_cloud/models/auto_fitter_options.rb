=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="AutoFitterOptions.rb">
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

  # Represents all auto fitter options.
  class AutoFitterOptions
    # Gets and set the type of auto fitting row height of merged cells.
    # @return [String]
    attr_accessor :auto_fit_merged_cells_type
    # Ignores the hidden rows/columns.
    # @return [BOOLEAN]
    attr_accessor :ignore_hidden
    # Indicates whether only fit the rows which height are not customed.
    # @return [BOOLEAN]
    attr_accessor :only_auto
    # Gets or sets default edit language.
    # @return [String]
    attr_accessor :default_edit_language
    # Gets and sets the max row height(in unit of Point) when autofitting rows.
    # @return [Float]
    attr_accessor :max_row_height
    # Gets and sets the type of auto fitting wrapped text.
    # @return [String]
    attr_accessor :auto_fit_wrapped_text_type
    # Gets and sets the formatted strategy.
    # @return [String]
    attr_accessor :format_strategy
    # Indicates whether fit for rendering purpose.
    # @return [BOOLEAN]
    attr_accessor :for_rendering

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_fit_merged_cells_type' => :'AutoFitMergedCellsType',
        :'ignore_hidden' => :'IgnoreHidden',
        :'only_auto' => :'OnlyAuto',
        :'default_edit_language' => :'DefaultEditLanguage',
        :'max_row_height' => :'MaxRowHeight',
        :'auto_fit_wrapped_text_type' => :'AutoFitWrappedTextType',
        :'format_strategy' => :'FormatStrategy',
        :'for_rendering' => :'ForRendering',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_fit_merged_cells_type' => :'String',
        :'ignore_hidden' => :'BOOLEAN',
        :'only_auto' => :'BOOLEAN',
        :'default_edit_language' => :'String',
        :'max_row_height' => :'Float',
        :'auto_fit_wrapped_text_type' => :'String',
        :'format_strategy' => :'String',
        :'for_rendering' => :'BOOLEAN',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.auto_fit_merged_cells_type = attributes[:auto_fit_merged_cells_type] if attributes.key?(:auto_fit_merged_cells_type)
      self.ignore_hidden = attributes[:ignore_hidden] if attributes.key?(:ignore_hidden)
      self.only_auto = attributes[:only_auto] if attributes.key?(:only_auto)
      self.default_edit_language = attributes[:default_edit_language] if attributes.key?(:default_edit_language)
      self.max_row_height = attributes[:max_row_height] if attributes.key?(:max_row_height)
      self.auto_fit_wrapped_text_type = attributes[:auto_fit_wrapped_text_type] if attributes.key?(:auto_fit_wrapped_text_type)
      self.format_strategy = attributes[:format_strategy] if attributes.key?(:format_strategy)
      self.for_rendering = attributes[:for_rendering] if attributes.key?(:for_rendering)
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
