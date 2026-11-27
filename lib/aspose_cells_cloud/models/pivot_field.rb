=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PivotField.rb">
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

  # Represents a field in a PivotTable report.
  class PivotField
    # Represent the number of top or bottom items            that are automatically shown in the specified PivotTable field.
    # @return [Integer]
    attr_accessor :auto_show_count
    # @return [Integer]
    attr_accessor :auto_show_field
    # @return [Integer]
    attr_accessor :auto_sort_field
    # @return [Integer]
    attr_accessor :base_field
    # @return [Integer]
    attr_accessor :base_index
    # @return [Integer]
    attr_accessor :base_item
    # @return [String]
    attr_accessor :base_item_position
    # @return [Integer]
    attr_accessor :current_page_item
    # @return [String]
    attr_accessor :data_display_format
    # @return [String]
    attr_accessor :display_name
    # @return [BOOLEAN]
    attr_accessor :drag_to_column
    # @return [BOOLEAN]
    attr_accessor :drag_to_data
    # @return [BOOLEAN]
    attr_accessor :drag_to_hide
    # @return [BOOLEAN]
    attr_accessor :drag_to_page
    # @return [BOOLEAN]
    attr_accessor :drag_to_row
    # @return [String]
    attr_accessor :function
    # @return [BOOLEAN]
    attr_accessor :insert_blank_row
    # @return [BOOLEAN]
    attr_accessor :is_ascend_show
    # @return [BOOLEAN]
    attr_accessor :is_ascend_sort
    # @return [BOOLEAN]
    attr_accessor :is_auto_show
    # @return [BOOLEAN]
    attr_accessor :is_auto_sort
    # @return [BOOLEAN]
    attr_accessor :is_auto_subtotals
    # @return [BOOLEAN]
    attr_accessor :is_calculated_field
    # @return [BOOLEAN]
    attr_accessor :is_include_new_items_in_filter
    # @return [BOOLEAN]
    attr_accessor :is_insert_page_breaks_between_items
    # @return [BOOLEAN]
    attr_accessor :is_multiple_item_selection_allowed
    # @return [BOOLEAN]
    attr_accessor :is_repeat_item_labels
    # @return [Integer]
    attr_accessor :item_count
    # @return [Array<String>]
    attr_accessor :items
    # @return [String]
    attr_accessor :name
    # @return [Integer]
    attr_accessor :number
    # @return [String]
    attr_accessor :number_format
    # @return [Array<String>]
    attr_accessor :original_items
    # @return [Array<PivotItem>]
    attr_accessor :pivot_items
    # @return [Integer]
    attr_accessor :position
    # @return [BOOLEAN]
    attr_accessor :show_all_items
    # @return [BOOLEAN]
    attr_accessor :show_compact
    # @return [BOOLEAN]
    attr_accessor :show_in_outline_form
    # @return [BOOLEAN]
    attr_accessor :show_subtotal_at_top

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_show_count' => :'AutoShowCount',
        :'auto_show_field' => :'AutoShowField',
        :'auto_sort_field' => :'AutoSortField',
        :'base_field' => :'BaseField',
        :'base_index' => :'BaseIndex',
        :'base_item' => :'BaseItem',
        :'base_item_position' => :'BaseItemPosition',
        :'current_page_item' => :'CurrentPageItem',
        :'data_display_format' => :'DataDisplayFormat',
        :'display_name' => :'DisplayName',
        :'drag_to_column' => :'DragToColumn',
        :'drag_to_data' => :'DragToData',
        :'drag_to_hide' => :'DragToHide',
        :'drag_to_page' => :'DragToPage',
        :'drag_to_row' => :'DragToRow',
        :'function' => :'Function',
        :'insert_blank_row' => :'InsertBlankRow',
        :'is_ascend_show' => :'IsAscendShow',
        :'is_ascend_sort' => :'IsAscendSort',
        :'is_auto_show' => :'IsAutoShow',
        :'is_auto_sort' => :'IsAutoSort',
        :'is_auto_subtotals' => :'IsAutoSubtotals',
        :'is_calculated_field' => :'IsCalculatedField',
        :'is_include_new_items_in_filter' => :'IsIncludeNewItemsInFilter',
        :'is_insert_page_breaks_between_items' => :'IsInsertPageBreaksBetweenItems',
        :'is_multiple_item_selection_allowed' => :'IsMultipleItemSelectionAllowed',
        :'is_repeat_item_labels' => :'IsRepeatItemLabels',
        :'item_count' => :'ItemCount',
        :'items' => :'Items',
        :'name' => :'Name',
        :'number' => :'Number',
        :'number_format' => :'NumberFormat',
        :'original_items' => :'OriginalItems',
        :'pivot_items' => :'PivotItems',
        :'position' => :'Position',
        :'show_all_items' => :'ShowAllItems',
        :'show_compact' => :'ShowCompact',
        :'show_in_outline_form' => :'ShowInOutlineForm',
        :'show_subtotal_at_top' => :'ShowSubtotalAtTop',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_show_count' => :'Integer',
        :'auto_show_field' => :'Integer',
        :'auto_sort_field' => :'Integer',
        :'base_field' => :'Integer',
        :'base_index' => :'Integer',
        :'base_item' => :'Integer',
        :'base_item_position' => :'String',
        :'current_page_item' => :'Integer',
        :'data_display_format' => :'String',
        :'display_name' => :'String',
        :'drag_to_column' => :'BOOLEAN',
        :'drag_to_data' => :'BOOLEAN',
        :'drag_to_hide' => :'BOOLEAN',
        :'drag_to_page' => :'BOOLEAN',
        :'drag_to_row' => :'BOOLEAN',
        :'function' => :'String',
        :'insert_blank_row' => :'BOOLEAN',
        :'is_ascend_show' => :'BOOLEAN',
        :'is_ascend_sort' => :'BOOLEAN',
        :'is_auto_show' => :'BOOLEAN',
        :'is_auto_sort' => :'BOOLEAN',
        :'is_auto_subtotals' => :'BOOLEAN',
        :'is_calculated_field' => :'BOOLEAN',
        :'is_include_new_items_in_filter' => :'BOOLEAN',
        :'is_insert_page_breaks_between_items' => :'BOOLEAN',
        :'is_multiple_item_selection_allowed' => :'BOOLEAN',
        :'is_repeat_item_labels' => :'BOOLEAN',
        :'item_count' => :'Integer',
        :'items' => :'Array<String>',
        :'name' => :'String',
        :'number' => :'Integer',
        :'number_format' => :'String',
        :'original_items' => :'Array<String>',
        :'pivot_items' => :'Array<PivotItem>',
        :'position' => :'Integer',
        :'show_all_items' => :'BOOLEAN',
        :'show_compact' => :'BOOLEAN',
        :'show_in_outline_form' => :'BOOLEAN',
        :'show_subtotal_at_top' => :'BOOLEAN',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.auto_show_count = attributes[:auto_show_count] if attributes.key?(:auto_show_count)
      self.auto_show_field = attributes[:auto_show_field] if attributes.key?(:auto_show_field)
      self.auto_sort_field = attributes[:auto_sort_field] if attributes.key?(:auto_sort_field)
      self.base_field = attributes[:base_field] if attributes.key?(:base_field)
      self.base_index = attributes[:base_index] if attributes.key?(:base_index)
      self.base_item = attributes[:base_item] if attributes.key?(:base_item)
      self.base_item_position = attributes[:base_item_position] if attributes.key?(:base_item_position)
      self.current_page_item = attributes[:current_page_item] if attributes.key?(:current_page_item)
      self.data_display_format = attributes[:data_display_format] if attributes.key?(:data_display_format)
      self.display_name = attributes[:display_name] if attributes.key?(:display_name)
      self.drag_to_column = attributes[:drag_to_column] if attributes.key?(:drag_to_column)
      self.drag_to_data = attributes[:drag_to_data] if attributes.key?(:drag_to_data)
      self.drag_to_hide = attributes[:drag_to_hide] if attributes.key?(:drag_to_hide)
      self.drag_to_page = attributes[:drag_to_page] if attributes.key?(:drag_to_page)
      self.drag_to_row = attributes[:drag_to_row] if attributes.key?(:drag_to_row)
      self.function = attributes[:function] if attributes.key?(:function)
      self.insert_blank_row = attributes[:insert_blank_row] if attributes.key?(:insert_blank_row)
      self.is_ascend_show = attributes[:is_ascend_show] if attributes.key?(:is_ascend_show)
      self.is_ascend_sort = attributes[:is_ascend_sort] if attributes.key?(:is_ascend_sort)
      self.is_auto_show = attributes[:is_auto_show] if attributes.key?(:is_auto_show)
      self.is_auto_sort = attributes[:is_auto_sort] if attributes.key?(:is_auto_sort)
      self.is_auto_subtotals = attributes[:is_auto_subtotals] if attributes.key?(:is_auto_subtotals)
      self.is_calculated_field = attributes[:is_calculated_field] if attributes.key?(:is_calculated_field)
      self.is_include_new_items_in_filter = attributes[:is_include_new_items_in_filter] if attributes.key?(:is_include_new_items_in_filter)
      self.is_insert_page_breaks_between_items = attributes[:is_insert_page_breaks_between_items] if attributes.key?(:is_insert_page_breaks_between_items)
      self.is_multiple_item_selection_allowed = attributes[:is_multiple_item_selection_allowed] if attributes.key?(:is_multiple_item_selection_allowed)
      self.is_repeat_item_labels = attributes[:is_repeat_item_labels] if attributes.key?(:is_repeat_item_labels)
      self.item_count = attributes[:item_count] if attributes.key?(:item_count)
      self.items = attributes[:items] if attributes.key?(:items)
      self.name = attributes[:name] if attributes.key?(:name)
      self.number = attributes[:number] if attributes.key?(:number)
      self.number_format = attributes[:number_format] if attributes.key?(:number_format)
      self.original_items = attributes[:original_items] if attributes.key?(:original_items)
      self.pivot_items = attributes[:pivot_items] if attributes.key?(:pivot_items)
      self.position = attributes[:position] if attributes.key?(:position)
      self.show_all_items = attributes[:show_all_items] if attributes.key?(:show_all_items)
      self.show_compact = attributes[:show_compact] if attributes.key?(:show_compact)
      self.show_in_outline_form = attributes[:show_in_outline_form] if attributes.key?(:show_in_outline_form)
      self.show_subtotal_at_top = attributes[:show_subtotal_at_top] if attributes.key?(:show_subtotal_at_top)
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
