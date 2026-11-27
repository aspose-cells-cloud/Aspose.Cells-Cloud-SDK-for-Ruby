=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="TrimContentOptions.rb">
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

  class TrimContentOptions
    # Represents data source.  There are three types of data, they are CloudFileSystem, RequestFiles, HttpUri.
    # @return [DataSource]
    attr_accessor :data_source
    # Represents file information. Include of filename, filesize, and file content(base64String).
    # @return [FileInfo]
    attr_accessor :file_info
    # Trim Content
    # @return [String]
    attr_accessor :trim_content
    # If the trim leading value is true, the trim content before and after cell values will be deleted.
    # @return [BOOLEAN]
    attr_accessor :trim_leading
    # If the trim trailing value is true, the trim content before and after cell values will be deleted.
    # @return [BOOLEAN]
    attr_accessor :trim_trailing
    # When the trim space between word to 1 parameter is true, it enables the removal of extra spaces between words within a cell, ensuring that only a single space is maintained between words.
    # @return [BOOLEAN]
    attr_accessor :trim_space_between_word_to1
    # @return [BOOLEAN]
    attr_accessor :trim_non_breaking_spaces
    # When this parameter is enabled (set to True), it deletes extra line breaks within the selected range, ensuring that only necessary line breaks are retained.
    # @return [BOOLEAN]
    attr_accessor :remove_extra_line_breaks
    # When this parameter is enabled (set to True), it removes all line breaks within the selected range, resulting in a continuous block of text without any line breaks.
    # @return [BOOLEAN]
    attr_accessor :remove_all_line_breaks
    # Specifies the range of cells within the worksheet where the spreadsheet operations will be performed. This parameter allows users to define the exact area to be processed, ensuring that operations are applied only to the designated cells.
    # @return [ScopeOptions]
    attr_accessor :scope_options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'data_source' => :'DataSource',
        :'file_info' => :'FileInfo',
        :'trim_content' => :'TrimContent',
        :'trim_leading' => :'TrimLeading',
        :'trim_trailing' => :'TrimTrailing',
        :'trim_space_between_word_to1' => :'TrimSpaceBetweenWordTo1',
        :'trim_non_breaking_spaces' => :'TrimNonBreakingSpaces',
        :'remove_extra_line_breaks' => :'RemoveExtraLineBreaks',
        :'remove_all_line_breaks' => :'RemoveAllLineBreaks',
        :'scope_options' => :'ScopeOptions',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'data_source' => :'DataSource',
        :'file_info' => :'FileInfo',
        :'trim_content' => :'String',
        :'trim_leading' => :'BOOLEAN',
        :'trim_trailing' => :'BOOLEAN',
        :'trim_space_between_word_to1' => :'BOOLEAN',
        :'trim_non_breaking_spaces' => :'BOOLEAN',
        :'remove_extra_line_breaks' => :'BOOLEAN',
        :'remove_all_line_breaks' => :'BOOLEAN',
        :'scope_options' => :'ScopeOptions',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.data_source = attributes[:data_source] if attributes.key?(:data_source)
      self.file_info = attributes[:file_info] if attributes.key?(:file_info)
      self.trim_content = attributes[:trim_content] if attributes.key?(:trim_content)
      self.trim_leading = attributes[:trim_leading] if attributes.key?(:trim_leading)
      self.trim_trailing = attributes[:trim_trailing] if attributes.key?(:trim_trailing)
      self.trim_space_between_word_to1 = attributes[:trim_space_between_word_to1] if attributes.key?(:trim_space_between_word_to1)
      self.trim_non_breaking_spaces = attributes[:trim_non_breaking_spaces] if attributes.key?(:trim_non_breaking_spaces)
      self.remove_extra_line_breaks = attributes[:remove_extra_line_breaks] if attributes.key?(:remove_extra_line_breaks)
      self.remove_all_line_breaks = attributes[:remove_all_line_breaks] if attributes.key?(:remove_all_line_breaks)
      self.scope_options = attributes[:scope_options] if attributes.key?(:scope_options)
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
