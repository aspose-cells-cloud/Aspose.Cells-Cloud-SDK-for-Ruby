=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PivotTable.rb">
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
require_relative 'link_element'

module AsposeCellsCloud

  # Summary description for PivotTable.
  class PivotTable < LinkElement
    # Gets the description of the alt text
    # @return [String]
    attr_accessor :alt_text_description
    # @return [String]
    attr_accessor :alt_text_title
    # @return [String]
    attr_accessor :auto_format_type
    # @return [Array<PivotField>]
    attr_accessor :base_fields
    # @return [Array<PivotField>]
    attr_accessor :column_fields
    # @return [BOOLEAN]
    attr_accessor :column_grand
    # @return [String]
    attr_accessor :column_header_caption
    # @return [CellArea]
    attr_accessor :column_range
    # @return [BOOLEAN]
    attr_accessor :custom_list_sort
    # @return [CellArea]
    attr_accessor :data_body_range
    # @return [PivotField]
    attr_accessor :data_field
    # @return [Array<PivotField>]
    attr_accessor :data_fields
    # @return [Array<String>]
    attr_accessor :data_source
    # @return [BOOLEAN]
    attr_accessor :display_error_string
    # @return [BOOLEAN]
    attr_accessor :display_immediate_items
    # @return [BOOLEAN]
    attr_accessor :display_null_string
    # @return [BOOLEAN]
    attr_accessor :enable_data_value_editing
    # @return [BOOLEAN]
    attr_accessor :enable_drilldown
    # @return [BOOLEAN]
    attr_accessor :enable_field_dialog
    # @return [BOOLEAN]
    attr_accessor :enable_field_list
    # @return [BOOLEAN]
    attr_accessor :enable_wizard
    # @return [String]
    attr_accessor :error_string
    # @return [BOOLEAN]
    attr_accessor :field_list_sort_ascending
    # @return [String]
    attr_accessor :grand_total_name
    # @return [BOOLEAN]
    attr_accessor :has_blank_rows
    # @return [Integer]
    attr_accessor :indent
    # @return [BOOLEAN]
    attr_accessor :is_auto_format
    # @return [BOOLEAN]
    attr_accessor :is_grid_drop_zones
    # @return [BOOLEAN]
    attr_accessor :is_multiple_field_filters
    # @return [BOOLEAN]
    attr_accessor :is_selected
    # @return [BOOLEAN]
    attr_accessor :item_print_titles
    # @return [BOOLEAN]
    attr_accessor :manual_update
    # @return [BOOLEAN]
    attr_accessor :merge_labels
    # @return [String]
    attr_accessor :missing_items_limit
    # Represents pivot table name.
    # @return [String]
    attr_accessor :name
    # @return [String]
    attr_accessor :null_string
    # @return [String]
    attr_accessor :page_field_order
    # @return [Array<PivotField>]
    attr_accessor :page_fields
    # @return [Integer]
    attr_accessor :page_field_wrap_count
    # @return [Array<PivotFilter>]
    attr_accessor :pivot_filters
    # @return [String]
    attr_accessor :pivot_table_style_name
    # @return [String]
    attr_accessor :pivot_table_style_type
    # @return [BOOLEAN]
    attr_accessor :preserve_formatting
    # @return [BOOLEAN]
    attr_accessor :print_drill
    # @return [BOOLEAN]
    attr_accessor :print_titles
    # @return [BOOLEAN]
    attr_accessor :refresh_data_flag
    # @return [BOOLEAN]
    attr_accessor :refresh_data_on_opening_file
    # @return [Array<PivotField>]
    attr_accessor :row_fields
    # @return [BOOLEAN]
    attr_accessor :row_grand
    # @return [String]
    attr_accessor :row_header_caption
    # @return [CellArea]
    attr_accessor :row_range
    # @return [BOOLEAN]
    attr_accessor :save_data
    # @return [BOOLEAN]
    attr_accessor :show_data_tips
    # @return [BOOLEAN]
    attr_accessor :show_drill
    # @return [BOOLEAN]
    attr_accessor :show_empty_col
    # @return [BOOLEAN]
    attr_accessor :show_empty_row
    # @return [BOOLEAN]
    attr_accessor :show_member_property_tips
    # @return [BOOLEAN]
    attr_accessor :show_pivot_style_column_header
    # @return [BOOLEAN]
    attr_accessor :show_pivot_style_column_stripes
    # @return [BOOLEAN]
    attr_accessor :show_pivot_style_last_column
    # @return [BOOLEAN]
    attr_accessor :show_pivot_style_row_header
    # @return [BOOLEAN]
    attr_accessor :show_pivot_style_row_stripes
    # @return [BOOLEAN]
    attr_accessor :show_row_header_caption
    # @return [BOOLEAN]
    attr_accessor :show_values_row
    # @return [BOOLEAN]
    attr_accessor :subtotal_hidden_page_items
    # @return [CellArea]
    attr_accessor :table_range1
    # @return [CellArea]
    attr_accessor :table_range2
    # @return [String]
    attr_accessor :tag
    # @return [Link]
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'alt_text_description' => :'AltTextDescription',
        :'alt_text_title' => :'AltTextTitle',
        :'auto_format_type' => :'AutoFormatType',
        :'base_fields' => :'BaseFields',
        :'column_fields' => :'ColumnFields',
        :'column_grand' => :'ColumnGrand',
        :'column_header_caption' => :'ColumnHeaderCaption',
        :'column_range' => :'ColumnRange',
        :'custom_list_sort' => :'CustomListSort',
        :'data_body_range' => :'DataBodyRange',
        :'data_field' => :'DataField',
        :'data_fields' => :'DataFields',
        :'data_source' => :'DataSource',
        :'display_error_string' => :'DisplayErrorString',
        :'display_immediate_items' => :'DisplayImmediateItems',
        :'display_null_string' => :'DisplayNullString',
        :'enable_data_value_editing' => :'EnableDataValueEditing',
        :'enable_drilldown' => :'EnableDrilldown',
        :'enable_field_dialog' => :'EnableFieldDialog',
        :'enable_field_list' => :'EnableFieldList',
        :'enable_wizard' => :'EnableWizard',
        :'error_string' => :'ErrorString',
        :'field_list_sort_ascending' => :'FieldListSortAscending',
        :'grand_total_name' => :'GrandTotalName',
        :'has_blank_rows' => :'HasBlankRows',
        :'indent' => :'Indent',
        :'is_auto_format' => :'IsAutoFormat',
        :'is_grid_drop_zones' => :'IsGridDropZones',
        :'is_multiple_field_filters' => :'IsMultipleFieldFilters',
        :'is_selected' => :'IsSelected',
        :'item_print_titles' => :'ItemPrintTitles',
        :'manual_update' => :'ManualUpdate',
        :'merge_labels' => :'MergeLabels',
        :'missing_items_limit' => :'MissingItemsLimit',
        :'name' => :'Name',
        :'null_string' => :'NullString',
        :'page_field_order' => :'PageFieldOrder',
        :'page_fields' => :'PageFields',
        :'page_field_wrap_count' => :'PageFieldWrapCount',
        :'pivot_filters' => :'PivotFilters',
        :'pivot_table_style_name' => :'PivotTableStyleName',
        :'pivot_table_style_type' => :'PivotTableStyleType',
        :'preserve_formatting' => :'PreserveFormatting',
        :'print_drill' => :'PrintDrill',
        :'print_titles' => :'PrintTitles',
        :'refresh_data_flag' => :'RefreshDataFlag',
        :'refresh_data_on_opening_file' => :'RefreshDataOnOpeningFile',
        :'row_fields' => :'RowFields',
        :'row_grand' => :'RowGrand',
        :'row_header_caption' => :'RowHeaderCaption',
        :'row_range' => :'RowRange',
        :'save_data' => :'SaveData',
        :'show_data_tips' => :'ShowDataTips',
        :'show_drill' => :'ShowDrill',
        :'show_empty_col' => :'ShowEmptyCol',
        :'show_empty_row' => :'ShowEmptyRow',
        :'show_member_property_tips' => :'ShowMemberPropertyTips',
        :'show_pivot_style_column_header' => :'ShowPivotStyleColumnHeader',
        :'show_pivot_style_column_stripes' => :'ShowPivotStyleColumnStripes',
        :'show_pivot_style_last_column' => :'ShowPivotStyleLastColumn',
        :'show_pivot_style_row_header' => :'ShowPivotStyleRowHeader',
        :'show_pivot_style_row_stripes' => :'ShowPivotStyleRowStripes',
        :'show_row_header_caption' => :'ShowRowHeaderCaption',
        :'show_values_row' => :'ShowValuesRow',
        :'subtotal_hidden_page_items' => :'SubtotalHiddenPageItems',
        :'table_range1' => :'TableRange1',
        :'table_range2' => :'TableRange2',
        :'tag' => :'Tag',
        :'link' => :'link',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'alt_text_description' => :'String',
        :'alt_text_title' => :'String',
        :'auto_format_type' => :'String',
        :'base_fields' => :'Array<PivotField>',
        :'column_fields' => :'Array<PivotField>',
        :'column_grand' => :'BOOLEAN',
        :'column_header_caption' => :'String',
        :'column_range' => :'CellArea',
        :'custom_list_sort' => :'BOOLEAN',
        :'data_body_range' => :'CellArea',
        :'data_field' => :'PivotField',
        :'data_fields' => :'Array<PivotField>',
        :'data_source' => :'Array<String>',
        :'display_error_string' => :'BOOLEAN',
        :'display_immediate_items' => :'BOOLEAN',
        :'display_null_string' => :'BOOLEAN',
        :'enable_data_value_editing' => :'BOOLEAN',
        :'enable_drilldown' => :'BOOLEAN',
        :'enable_field_dialog' => :'BOOLEAN',
        :'enable_field_list' => :'BOOLEAN',
        :'enable_wizard' => :'BOOLEAN',
        :'error_string' => :'String',
        :'field_list_sort_ascending' => :'BOOLEAN',
        :'grand_total_name' => :'String',
        :'has_blank_rows' => :'BOOLEAN',
        :'indent' => :'Integer',
        :'is_auto_format' => :'BOOLEAN',
        :'is_grid_drop_zones' => :'BOOLEAN',
        :'is_multiple_field_filters' => :'BOOLEAN',
        :'is_selected' => :'BOOLEAN',
        :'item_print_titles' => :'BOOLEAN',
        :'manual_update' => :'BOOLEAN',
        :'merge_labels' => :'BOOLEAN',
        :'missing_items_limit' => :'String',
        :'name' => :'String',
        :'null_string' => :'String',
        :'page_field_order' => :'String',
        :'page_fields' => :'Array<PivotField>',
        :'page_field_wrap_count' => :'Integer',
        :'pivot_filters' => :'Array<PivotFilter>',
        :'pivot_table_style_name' => :'String',
        :'pivot_table_style_type' => :'String',
        :'preserve_formatting' => :'BOOLEAN',
        :'print_drill' => :'BOOLEAN',
        :'print_titles' => :'BOOLEAN',
        :'refresh_data_flag' => :'BOOLEAN',
        :'refresh_data_on_opening_file' => :'BOOLEAN',
        :'row_fields' => :'Array<PivotField>',
        :'row_grand' => :'BOOLEAN',
        :'row_header_caption' => :'String',
        :'row_range' => :'CellArea',
        :'save_data' => :'BOOLEAN',
        :'show_data_tips' => :'BOOLEAN',
        :'show_drill' => :'BOOLEAN',
        :'show_empty_col' => :'BOOLEAN',
        :'show_empty_row' => :'BOOLEAN',
        :'show_member_property_tips' => :'BOOLEAN',
        :'show_pivot_style_column_header' => :'BOOLEAN',
        :'show_pivot_style_column_stripes' => :'BOOLEAN',
        :'show_pivot_style_last_column' => :'BOOLEAN',
        :'show_pivot_style_row_header' => :'BOOLEAN',
        :'show_pivot_style_row_stripes' => :'BOOLEAN',
        :'show_row_header_caption' => :'BOOLEAN',
        :'show_values_row' => :'BOOLEAN',
        :'subtotal_hidden_page_items' => :'BOOLEAN',
        :'table_range1' => :'CellArea',
        :'table_range2' => :'CellArea',
        :'tag' => :'String',
        :'link' => :'Link',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      super(attributes)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.alt_text_description = attributes[:alt_text_description] if attributes.key?(:alt_text_description)
      self.alt_text_title = attributes[:alt_text_title] if attributes.key?(:alt_text_title)
      self.auto_format_type = attributes[:auto_format_type] if attributes.key?(:auto_format_type)
      self.base_fields = attributes[:base_fields] if attributes.key?(:base_fields)
      self.column_fields = attributes[:column_fields] if attributes.key?(:column_fields)
      self.column_grand = attributes[:column_grand] if attributes.key?(:column_grand)
      self.column_header_caption = attributes[:column_header_caption] if attributes.key?(:column_header_caption)
      self.column_range = attributes[:column_range] if attributes.key?(:column_range)
      self.custom_list_sort = attributes[:custom_list_sort] if attributes.key?(:custom_list_sort)
      self.data_body_range = attributes[:data_body_range] if attributes.key?(:data_body_range)
      self.data_field = attributes[:data_field] if attributes.key?(:data_field)
      self.data_fields = attributes[:data_fields] if attributes.key?(:data_fields)
      self.data_source = attributes[:data_source] if attributes.key?(:data_source)
      self.display_error_string = attributes[:display_error_string] if attributes.key?(:display_error_string)
      self.display_immediate_items = attributes[:display_immediate_items] if attributes.key?(:display_immediate_items)
      self.display_null_string = attributes[:display_null_string] if attributes.key?(:display_null_string)
      self.enable_data_value_editing = attributes[:enable_data_value_editing] if attributes.key?(:enable_data_value_editing)
      self.enable_drilldown = attributes[:enable_drilldown] if attributes.key?(:enable_drilldown)
      self.enable_field_dialog = attributes[:enable_field_dialog] if attributes.key?(:enable_field_dialog)
      self.enable_field_list = attributes[:enable_field_list] if attributes.key?(:enable_field_list)
      self.enable_wizard = attributes[:enable_wizard] if attributes.key?(:enable_wizard)
      self.error_string = attributes[:error_string] if attributes.key?(:error_string)
      self.field_list_sort_ascending = attributes[:field_list_sort_ascending] if attributes.key?(:field_list_sort_ascending)
      self.grand_total_name = attributes[:grand_total_name] if attributes.key?(:grand_total_name)
      self.has_blank_rows = attributes[:has_blank_rows] if attributes.key?(:has_blank_rows)
      self.indent = attributes[:indent] if attributes.key?(:indent)
      self.is_auto_format = attributes[:is_auto_format] if attributes.key?(:is_auto_format)
      self.is_grid_drop_zones = attributes[:is_grid_drop_zones] if attributes.key?(:is_grid_drop_zones)
      self.is_multiple_field_filters = attributes[:is_multiple_field_filters] if attributes.key?(:is_multiple_field_filters)
      self.is_selected = attributes[:is_selected] if attributes.key?(:is_selected)
      self.item_print_titles = attributes[:item_print_titles] if attributes.key?(:item_print_titles)
      self.manual_update = attributes[:manual_update] if attributes.key?(:manual_update)
      self.merge_labels = attributes[:merge_labels] if attributes.key?(:merge_labels)
      self.missing_items_limit = attributes[:missing_items_limit] if attributes.key?(:missing_items_limit)
      self.name = attributes[:name] if attributes.key?(:name)
      self.null_string = attributes[:null_string] if attributes.key?(:null_string)
      self.page_field_order = attributes[:page_field_order] if attributes.key?(:page_field_order)
      self.page_fields = attributes[:page_fields] if attributes.key?(:page_fields)
      self.page_field_wrap_count = attributes[:page_field_wrap_count] if attributes.key?(:page_field_wrap_count)
      self.pivot_filters = attributes[:pivot_filters] if attributes.key?(:pivot_filters)
      self.pivot_table_style_name = attributes[:pivot_table_style_name] if attributes.key?(:pivot_table_style_name)
      self.pivot_table_style_type = attributes[:pivot_table_style_type] if attributes.key?(:pivot_table_style_type)
      self.preserve_formatting = attributes[:preserve_formatting] if attributes.key?(:preserve_formatting)
      self.print_drill = attributes[:print_drill] if attributes.key?(:print_drill)
      self.print_titles = attributes[:print_titles] if attributes.key?(:print_titles)
      self.refresh_data_flag = attributes[:refresh_data_flag] if attributes.key?(:refresh_data_flag)
      self.refresh_data_on_opening_file = attributes[:refresh_data_on_opening_file] if attributes.key?(:refresh_data_on_opening_file)
      self.row_fields = attributes[:row_fields] if attributes.key?(:row_fields)
      self.row_grand = attributes[:row_grand] if attributes.key?(:row_grand)
      self.row_header_caption = attributes[:row_header_caption] if attributes.key?(:row_header_caption)
      self.row_range = attributes[:row_range] if attributes.key?(:row_range)
      self.save_data = attributes[:save_data] if attributes.key?(:save_data)
      self.show_data_tips = attributes[:show_data_tips] if attributes.key?(:show_data_tips)
      self.show_drill = attributes[:show_drill] if attributes.key?(:show_drill)
      self.show_empty_col = attributes[:show_empty_col] if attributes.key?(:show_empty_col)
      self.show_empty_row = attributes[:show_empty_row] if attributes.key?(:show_empty_row)
      self.show_member_property_tips = attributes[:show_member_property_tips] if attributes.key?(:show_member_property_tips)
      self.show_pivot_style_column_header = attributes[:show_pivot_style_column_header] if attributes.key?(:show_pivot_style_column_header)
      self.show_pivot_style_column_stripes = attributes[:show_pivot_style_column_stripes] if attributes.key?(:show_pivot_style_column_stripes)
      self.show_pivot_style_last_column = attributes[:show_pivot_style_last_column] if attributes.key?(:show_pivot_style_last_column)
      self.show_pivot_style_row_header = attributes[:show_pivot_style_row_header] if attributes.key?(:show_pivot_style_row_header)
      self.show_pivot_style_row_stripes = attributes[:show_pivot_style_row_stripes] if attributes.key?(:show_pivot_style_row_stripes)
      self.show_row_header_caption = attributes[:show_row_header_caption] if attributes.key?(:show_row_header_caption)
      self.show_values_row = attributes[:show_values_row] if attributes.key?(:show_values_row)
      self.subtotal_hidden_page_items = attributes[:subtotal_hidden_page_items] if attributes.key?(:subtotal_hidden_page_items)
      self.table_range1 = attributes[:table_range1] if attributes.key?(:table_range1)
      self.table_range2 = attributes[:table_range2] if attributes.key?(:table_range2)
      self.tag = attributes[:tag] if attributes.key?(:tag)
      self.link = attributes[:link] if attributes.key?(:link)
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
