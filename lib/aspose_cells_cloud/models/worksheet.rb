=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="Worksheet.rb">
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

  # Encapsulates the object that represents a single worksheet.
  class Worksheet
    # Property Summary: Contains a list of links represented by the class link.
    # @return [Array<Link>]
    attr_accessor :links
    # Indicates if the specified worksheet is displayed from right to left instead of from left to right.             Default is false.
    # @return [BOOLEAN]
    attr_accessor :display_right_to_left
    # True if zero values are displayed.
    # @return [BOOLEAN]
    attr_accessor :display_zeros
    # Represents first visible column index.
    # @return [Integer]
    attr_accessor :first_visible_column
    # Represents first visible row index.
    # @return [Integer]
    attr_accessor :first_visible_row
    # Gets or sets the name of the worksheet.
    # @return [String]
    attr_accessor :name
    # Gets the index of sheet in the worksheet collection.
    # @return [Integer]
    attr_accessor :index
    # Gets or sets a value indicating whether the gridlines are visible.Default is true.
    # @return [BOOLEAN]
    attr_accessor :is_gridlines_visible
    # Indicates whether to show outline.
    # @return [BOOLEAN]
    attr_accessor :is_outline_shown
    # Indicates whether the specified worksheet is shown in normal view or page break preview.
    # @return [BOOLEAN]
    attr_accessor :is_page_break_preview
    # Represents if the worksheet is visible.
    # @return [BOOLEAN]
    attr_accessor :is_visible
    # Indicates if the worksheet is protected.
    # @return [BOOLEAN]
    attr_accessor :is_protected
    # Gets or sets a value indicating whether the worksheet will display row and column headers.             Default is true.
    # @return [BOOLEAN]
    attr_accessor :is_row_column_headers_visible
    # Indicates whether the ruler is visible. This property is only applied for page break preview.
    # @return [BOOLEAN]
    attr_accessor :is_ruler_visible
    # Indicates whether this worksheet is selected when the workbook is opened.
    # @return [BOOLEAN]
    attr_accessor :is_selected
    # Represents worksheet tab color.
    # @return [Color]
    attr_accessor :tab_color
    # Indicates whether the Transition Formula Entry (Lotus compatibility) option is enabled.
    # @return [BOOLEAN]
    attr_accessor :transition_entry
    # Indicates whether the Transition Formula Evaluation (Lotus compatibility) option is enabled.
    # @return [BOOLEAN]
    attr_accessor :transition_evaluation
    # Represents worksheet type.
    # @return [String]
    attr_accessor :type
    # Gets and sets the view type.
    # @return [String]
    attr_accessor :view_type
    # Indicates the visible state for this sheet.
    # @return [String]
    attr_accessor :visibility_type
    # Represents the scaling factor in percentage. It should be between 10 and 400.
    # @return [Integer]
    attr_accessor :zoom
    # Gets the  collection.
    # @return [LinkElement]
    attr_accessor :cells
    # Gets a  collection
    # @return [LinkElement]
    attr_accessor :charts
    # @return [LinkElement]
    attr_accessor :auto_shapes
    # Represents a collection of  in a worksheet.
    # @return [LinkElement]
    attr_accessor :ole_objects
    # Gets the  collection.
    # @return [LinkElement]
    attr_accessor :comments
    # Gets a  collection.
    # @return [LinkElement]
    attr_accessor :pictures
    # @return [LinkElement]
    attr_accessor :merged_cells
    # Gets the data validation setting collection in the worksheet.
    # @return [LinkElement]
    attr_accessor :validations
    # Gets the ConditionalFormattings in the worksheet.
    # @return [LinkElement]
    attr_accessor :conditional_formattings
    # Gets the  collection.
    # @return [LinkElement]
    attr_accessor :hyperlinks

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'links' => :'Links',
        :'display_right_to_left' => :'DisplayRightToLeft',
        :'display_zeros' => :'DisplayZeros',
        :'first_visible_column' => :'FirstVisibleColumn',
        :'first_visible_row' => :'FirstVisibleRow',
        :'name' => :'Name',
        :'index' => :'Index',
        :'is_gridlines_visible' => :'IsGridlinesVisible',
        :'is_outline_shown' => :'IsOutlineShown',
        :'is_page_break_preview' => :'IsPageBreakPreview',
        :'is_visible' => :'IsVisible',
        :'is_protected' => :'IsProtected',
        :'is_row_column_headers_visible' => :'IsRowColumnHeadersVisible',
        :'is_ruler_visible' => :'IsRulerVisible',
        :'is_selected' => :'IsSelected',
        :'tab_color' => :'TabColor',
        :'transition_entry' => :'TransitionEntry',
        :'transition_evaluation' => :'TransitionEvaluation',
        :'type' => :'Type',
        :'view_type' => :'ViewType',
        :'visibility_type' => :'VisibilityType',
        :'zoom' => :'Zoom',
        :'cells' => :'Cells',
        :'charts' => :'Charts',
        :'auto_shapes' => :'AutoShapes',
        :'ole_objects' => :'OleObjects',
        :'comments' => :'Comments',
        :'pictures' => :'Pictures',
        :'merged_cells' => :'MergedCells',
        :'validations' => :'Validations',
        :'conditional_formattings' => :'ConditionalFormattings',
        :'hyperlinks' => :'Hyperlinks',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'links' => :'Array<Link>',
        :'display_right_to_left' => :'BOOLEAN',
        :'display_zeros' => :'BOOLEAN',
        :'first_visible_column' => :'Integer',
        :'first_visible_row' => :'Integer',
        :'name' => :'String',
        :'index' => :'Integer',
        :'is_gridlines_visible' => :'BOOLEAN',
        :'is_outline_shown' => :'BOOLEAN',
        :'is_page_break_preview' => :'BOOLEAN',
        :'is_visible' => :'BOOLEAN',
        :'is_protected' => :'BOOLEAN',
        :'is_row_column_headers_visible' => :'BOOLEAN',
        :'is_ruler_visible' => :'BOOLEAN',
        :'is_selected' => :'BOOLEAN',
        :'tab_color' => :'Color',
        :'transition_entry' => :'BOOLEAN',
        :'transition_evaluation' => :'BOOLEAN',
        :'type' => :'String',
        :'view_type' => :'String',
        :'visibility_type' => :'String',
        :'zoom' => :'Integer',
        :'cells' => :'LinkElement',
        :'charts' => :'LinkElement',
        :'auto_shapes' => :'LinkElement',
        :'ole_objects' => :'LinkElement',
        :'comments' => :'LinkElement',
        :'pictures' => :'LinkElement',
        :'merged_cells' => :'LinkElement',
        :'validations' => :'LinkElement',
        :'conditional_formattings' => :'LinkElement',
        :'hyperlinks' => :'LinkElement',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.links = attributes[:links] if attributes.key?(:links)
      self.display_right_to_left = attributes[:display_right_to_left] if attributes.key?(:display_right_to_left)
      self.display_zeros = attributes[:display_zeros] if attributes.key?(:display_zeros)
      self.first_visible_column = attributes[:first_visible_column] if attributes.key?(:first_visible_column)
      self.first_visible_row = attributes[:first_visible_row] if attributes.key?(:first_visible_row)
      self.name = attributes[:name] if attributes.key?(:name)
      self.index = attributes[:index] if attributes.key?(:index)
      self.is_gridlines_visible = attributes[:is_gridlines_visible] if attributes.key?(:is_gridlines_visible)
      self.is_outline_shown = attributes[:is_outline_shown] if attributes.key?(:is_outline_shown)
      self.is_page_break_preview = attributes[:is_page_break_preview] if attributes.key?(:is_page_break_preview)
      self.is_visible = attributes[:is_visible] if attributes.key?(:is_visible)
      self.is_protected = attributes[:is_protected] if attributes.key?(:is_protected)
      self.is_row_column_headers_visible = attributes[:is_row_column_headers_visible] if attributes.key?(:is_row_column_headers_visible)
      self.is_ruler_visible = attributes[:is_ruler_visible] if attributes.key?(:is_ruler_visible)
      self.is_selected = attributes[:is_selected] if attributes.key?(:is_selected)
      self.tab_color = attributes[:tab_color] if attributes.key?(:tab_color)
      self.transition_entry = attributes[:transition_entry] if attributes.key?(:transition_entry)
      self.transition_evaluation = attributes[:transition_evaluation] if attributes.key?(:transition_evaluation)
      self.type = attributes[:type] if attributes.key?(:type)
      self.view_type = attributes[:view_type] if attributes.key?(:view_type)
      self.visibility_type = attributes[:visibility_type] if attributes.key?(:visibility_type)
      self.zoom = attributes[:zoom] if attributes.key?(:zoom)
      self.cells = attributes[:cells] if attributes.key?(:cells)
      self.charts = attributes[:charts] if attributes.key?(:charts)
      self.auto_shapes = attributes[:auto_shapes] if attributes.key?(:auto_shapes)
      self.ole_objects = attributes[:ole_objects] if attributes.key?(:ole_objects)
      self.comments = attributes[:comments] if attributes.key?(:comments)
      self.pictures = attributes[:pictures] if attributes.key?(:pictures)
      self.merged_cells = attributes[:merged_cells] if attributes.key?(:merged_cells)
      self.validations = attributes[:validations] if attributes.key?(:validations)
      self.conditional_formattings = attributes[:conditional_formattings] if attributes.key?(:conditional_formattings)
      self.hyperlinks = attributes[:hyperlinks] if attributes.key?(:hyperlinks)
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
