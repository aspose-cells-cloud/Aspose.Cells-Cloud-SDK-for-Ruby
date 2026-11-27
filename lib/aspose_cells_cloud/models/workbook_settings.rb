=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="WorkbookSettings.rb">
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

  # Represents all settings of the workbook.
  class WorkbookSettings
    # Specifies a boolean value that indicates the application automatically compressed pictures in the workbook.
    # @return [BOOLEAN]
    attr_accessor :auto_compress_pictures
    # Indicates whether the file is mark for auto-recovery.
    # @return [BOOLEAN]
    attr_accessor :auto_recover
    # Specifies the incremental public release of the application.
    # @return [String]
    attr_accessor :build_version
    # It specifies whether to calculate formulas manually,             automatically or automatically except for multiple table operations.
    # @return [String]
    attr_accessor :calc_mode
    # Specifies the version of the calculation engine used to calculate values in the workbook.
    # @return [String]
    attr_accessor :calculation_id
    # Indicates whether check comptiliblity when saving workbook.                           Remarks:  The default value is true.
    # @return [BOOLEAN]
    attr_accessor :check_comptiliblity
    # Whether check restriction of excel file when user modify cells related objects.             For example, excel does not allow inputting string value longer than 32K.             When you input a value longer than 32K such as by Cell.PutValue(string), if this property is true, you will get an Exception.             If this property is false, we will accept your input string value as the cell's value so that later             you can output the complete string value for other file formats such as CSV.             However, if you have set such kind of value that is invalid for excel file format,             you should not save the workbook as excel file format later. Otherwise there may be unexpected error for the generated excel file.
    # @return [BOOLEAN]
    attr_accessor :check_excel_restriction
    # indicates whether the application last saved the workbook file after a crash.
    # @return [BOOLEAN]
    attr_accessor :crash_save
    # Whether creates calculated formulas chain. Default is false.
    # @return [BOOLEAN]
    attr_accessor :create_calc_chain
    # indicates whether the application last opened the workbook for data recovery.
    # @return [BOOLEAN]
    attr_accessor :data_extract_load
    # Gets or sets a value which represents if the workbook uses the 1904 date system.
    # @return [BOOLEAN]
    attr_accessor :date1904
    # Indicates whether and how to show objects in the workbook.
    # @return [String]
    attr_accessor :display_drawing_objects
    # Enable macros;
    # @return [BOOLEAN]
    attr_accessor :enable_macros
    # Gets or sets the first visible worksheet tab.
    # @return [Integer]
    attr_accessor :first_visible_tab
    # Gets and sets whether hide the field list for the PivotTable.
    # @return [BOOLEAN]
    attr_accessor :hide_pivot_field_list
    # Indicates whether encrypting the workbook with default password if Structure and Windows of the workbook are locked.
    # @return [BOOLEAN]
    attr_accessor :is_default_encrypted
    # Indicates whether this workbook is hidden.
    # @return [BOOLEAN]
    attr_accessor :is_hidden
    # Gets or sets a value indicating whether the generated spreadsheet will contain a horizontal scroll bar.
    # @return [BOOLEAN]
    attr_accessor :is_h_scroll_bar_visible
    # Represents whether the generated spreadsheet will be opened Minimized.
    # @return [BOOLEAN]
    attr_accessor :is_minimized
    # Gets or sets a value indicating whether the generated spreadsheet will contain a vertical scroll bar.
    # @return [BOOLEAN]
    attr_accessor :is_v_scroll_bar_visible
    # Indicates whether enable iterative calculation to resolve circular references.
    # @return [BOOLEAN]
    attr_accessor :iteration
    # Gets or sets the user interface language of the Workbook version based on CountryCode that has saved the file.
    # @return [String]
    attr_accessor :language_code
    # Returns or sets the maximum number of change to resolve a circular reference.
    # @return [Float]
    attr_accessor :max_change
    # Returns or sets the maximum number of iterations to resolve a circular reference.
    # @return [Integer]
    attr_accessor :max_iteration
    # Gets or sets the memory usage options. The new option will be taken as the default option for newly created worksheets but does not take effect for existing worksheets.
    # @return [String]
    attr_accessor :memory_setting
    # Gets or sets the decimal separator for formatting/parsing numeric values. Default is the decimal separator of current Region.
    # @return [String]
    attr_accessor :number_decimal_separator
    # Gets or sets the character that separates groups of digits to the left of the decimal in numeric values. Default is the group separator of current Region.
    # @return [String]
    attr_accessor :number_group_separator
    # Indicates whether parsing the formula when reading the file.
    # @return [BOOLEAN]
    attr_accessor :parsing_formula_on_open
    # True if calculations in this workbook will be done using only the precision of the numbers as they're displayed
    # @return [BOOLEAN]
    attr_accessor :precision_as_displayed
    # Indicates whether to recalculate before saving the document.
    # @return [BOOLEAN]
    attr_accessor :recalculate_before_save
    # Indicates whether re-calculate all formulas on opening file.
    # @return [BOOLEAN]
    attr_accessor :re_calculate_on_open
    # Indicates if the Read Only Recommended option is selected.
    # @return [BOOLEAN]
    attr_accessor :recommend_read_only
    # Gets or sets the regional settings for workbook.
    # @return [String]
    attr_accessor :region
    # True if personal information can be removed from the specified workbook.
    # @return [BOOLEAN]
    attr_accessor :remove_personal_information
    # Indicates whether the application last opened the workbook in safe or repair mode.
    # @return [BOOLEAN]
    attr_accessor :repair_load
    # Gets or sets a value that indicates whether the Workbook is shared.
    # @return [BOOLEAN]
    attr_accessor :shared
    # Width of worksheet tab bar (in 1/1000 of window width).
    # @return [Integer]
    attr_accessor :sheet_tab_bar_width
    # Get or sets a value whether the Workbook tabs are displayed.
    # @return [BOOLEAN]
    attr_accessor :show_tabs
    # Indicates whether update adjacent cells' border.
    # @return [BOOLEAN]
    attr_accessor :update_adjacent_cells_border
    # Gets and sets how updates external links when the workbook is opened.
    # @return [String]
    attr_accessor :update_links_type
    # The height of the window, in unit of point.
    # @return [Float]
    attr_accessor :window_height
    # The distance from the left edge of the client area to the left edge of the window, in unit of point.
    # @return [Float]
    attr_accessor :window_left
    # The distance from the top edge of the client area to the top edge of the window, in unit of point.
    # @return [Float]
    attr_accessor :window_top
    # The width of the window, in unit of point.
    # @return [Float]
    attr_accessor :window_width
    # Gets and sets the author of the file.
    # @return [String]
    attr_accessor :author
    # Indicates whether checking custom number format when setting Style.Custom.
    # @return [BOOLEAN]
    attr_accessor :check_custom_number_format
    # Gets the protection type of the workbook.
    # @return [String]
    attr_accessor :protection_type
    # Gets and sets the globalization settings.
    # @return [GlobalizationSettings]
    attr_accessor :globalization_settings
    # Represents Workbook file encryption password.
    # @return [String]
    attr_accessor :password
    # Provides access to the workbook write protection options.
    # @return [WriteProtection]
    attr_accessor :write_protection
    # Gets a value that indicates whether a password is required to open this workbook.
    # @return [BOOLEAN]
    attr_accessor :is_encrypted
    # Gets a value that indicates whether the structure or window of the Workbook is protected.
    # @return [BOOLEAN]
    attr_accessor :is_protected
    # Gets the max row index, zero-based.
    # @return [Integer]
    attr_accessor :max_row
    # Gets the max column index, zero-based.
    # @return [Integer]
    attr_accessor :max_column
    # Gets and sets the number of significant digits.             The default value is .
    # @return [Integer]
    attr_accessor :significant_digits
    # Indicates whether check compatibility with earlier versions when saving workbook.
    # @return [BOOLEAN]
    attr_accessor :check_compatibility
    # Gets and sets the default print paper size.
    # @return [String]
    attr_accessor :paper_size
    # Gets and sets the max row number of shared formula.
    # @return [Integer]
    attr_accessor :max_rows_of_shared_formula
    # Specifies the OOXML version for the output document. The default value is Ecma376_2006.
    # @return [String]
    attr_accessor :compliance
    # Indicates whether setting  property when entering the string value(which starts  with single quote mark ) to the cell
    # @return [BOOLEAN]
    attr_accessor :quote_prefix_to_style
    # Gets the settings for formula-related features.
    # @return [FormulaSettings]
    attr_accessor :formula_settings
    # Fully calculates every time when a calculation is triggered.
    # @return [BOOLEAN]
    attr_accessor :force_full_calculate

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_compress_pictures' => :'AutoCompressPictures',
        :'auto_recover' => :'AutoRecover',
        :'build_version' => :'BuildVersion',
        :'calc_mode' => :'CalcMode',
        :'calculation_id' => :'CalculationId',
        :'check_comptiliblity' => :'CheckComptiliblity',
        :'check_excel_restriction' => :'CheckExcelRestriction',
        :'crash_save' => :'CrashSave',
        :'create_calc_chain' => :'CreateCalcChain',
        :'data_extract_load' => :'DataExtractLoad',
        :'date1904' => :'Date1904',
        :'display_drawing_objects' => :'DisplayDrawingObjects',
        :'enable_macros' => :'EnableMacros',
        :'first_visible_tab' => :'FirstVisibleTab',
        :'hide_pivot_field_list' => :'HidePivotFieldList',
        :'is_default_encrypted' => :'IsDefaultEncrypted',
        :'is_hidden' => :'IsHidden',
        :'is_h_scroll_bar_visible' => :'IsHScrollBarVisible',
        :'is_minimized' => :'IsMinimized',
        :'is_v_scroll_bar_visible' => :'IsVScrollBarVisible',
        :'iteration' => :'Iteration',
        :'language_code' => :'LanguageCode',
        :'max_change' => :'MaxChange',
        :'max_iteration' => :'MaxIteration',
        :'memory_setting' => :'MemorySetting',
        :'number_decimal_separator' => :'NumberDecimalSeparator',
        :'number_group_separator' => :'NumberGroupSeparator',
        :'parsing_formula_on_open' => :'ParsingFormulaOnOpen',
        :'precision_as_displayed' => :'PrecisionAsDisplayed',
        :'recalculate_before_save' => :'RecalculateBeforeSave',
        :'re_calculate_on_open' => :'ReCalculateOnOpen',
        :'recommend_read_only' => :'RecommendReadOnly',
        :'region' => :'Region',
        :'remove_personal_information' => :'RemovePersonalInformation',
        :'repair_load' => :'RepairLoad',
        :'shared' => :'Shared',
        :'sheet_tab_bar_width' => :'SheetTabBarWidth',
        :'show_tabs' => :'ShowTabs',
        :'update_adjacent_cells_border' => :'UpdateAdjacentCellsBorder',
        :'update_links_type' => :'UpdateLinksType',
        :'window_height' => :'WindowHeight',
        :'window_left' => :'WindowLeft',
        :'window_top' => :'WindowTop',
        :'window_width' => :'WindowWidth',
        :'author' => :'Author',
        :'check_custom_number_format' => :'CheckCustomNumberFormat',
        :'protection_type' => :'ProtectionType',
        :'globalization_settings' => :'GlobalizationSettings',
        :'password' => :'Password',
        :'write_protection' => :'WriteProtection',
        :'is_encrypted' => :'IsEncrypted',
        :'is_protected' => :'IsProtected',
        :'max_row' => :'MaxRow',
        :'max_column' => :'MaxColumn',
        :'significant_digits' => :'SignificantDigits',
        :'check_compatibility' => :'CheckCompatibility',
        :'paper_size' => :'PaperSize',
        :'max_rows_of_shared_formula' => :'MaxRowsOfSharedFormula',
        :'compliance' => :'Compliance',
        :'quote_prefix_to_style' => :'QuotePrefixToStyle',
        :'formula_settings' => :'FormulaSettings',
        :'force_full_calculate' => :'ForceFullCalculate',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'auto_compress_pictures' => :'BOOLEAN',
        :'auto_recover' => :'BOOLEAN',
        :'build_version' => :'String',
        :'calc_mode' => :'String',
        :'calculation_id' => :'String',
        :'check_comptiliblity' => :'BOOLEAN',
        :'check_excel_restriction' => :'BOOLEAN',
        :'crash_save' => :'BOOLEAN',
        :'create_calc_chain' => :'BOOLEAN',
        :'data_extract_load' => :'BOOLEAN',
        :'date1904' => :'BOOLEAN',
        :'display_drawing_objects' => :'String',
        :'enable_macros' => :'BOOLEAN',
        :'first_visible_tab' => :'Integer',
        :'hide_pivot_field_list' => :'BOOLEAN',
        :'is_default_encrypted' => :'BOOLEAN',
        :'is_hidden' => :'BOOLEAN',
        :'is_h_scroll_bar_visible' => :'BOOLEAN',
        :'is_minimized' => :'BOOLEAN',
        :'is_v_scroll_bar_visible' => :'BOOLEAN',
        :'iteration' => :'BOOLEAN',
        :'language_code' => :'String',
        :'max_change' => :'Float',
        :'max_iteration' => :'Integer',
        :'memory_setting' => :'String',
        :'number_decimal_separator' => :'String',
        :'number_group_separator' => :'String',
        :'parsing_formula_on_open' => :'BOOLEAN',
        :'precision_as_displayed' => :'BOOLEAN',
        :'recalculate_before_save' => :'BOOLEAN',
        :'re_calculate_on_open' => :'BOOLEAN',
        :'recommend_read_only' => :'BOOLEAN',
        :'region' => :'String',
        :'remove_personal_information' => :'BOOLEAN',
        :'repair_load' => :'BOOLEAN',
        :'shared' => :'BOOLEAN',
        :'sheet_tab_bar_width' => :'Integer',
        :'show_tabs' => :'BOOLEAN',
        :'update_adjacent_cells_border' => :'BOOLEAN',
        :'update_links_type' => :'String',
        :'window_height' => :'Float',
        :'window_left' => :'Float',
        :'window_top' => :'Float',
        :'window_width' => :'Float',
        :'author' => :'String',
        :'check_custom_number_format' => :'BOOLEAN',
        :'protection_type' => :'String',
        :'globalization_settings' => :'GlobalizationSettings',
        :'password' => :'String',
        :'write_protection' => :'WriteProtection',
        :'is_encrypted' => :'BOOLEAN',
        :'is_protected' => :'BOOLEAN',
        :'max_row' => :'Integer',
        :'max_column' => :'Integer',
        :'significant_digits' => :'Integer',
        :'check_compatibility' => :'BOOLEAN',
        :'paper_size' => :'String',
        :'max_rows_of_shared_formula' => :'Integer',
        :'compliance' => :'String',
        :'quote_prefix_to_style' => :'BOOLEAN',
        :'formula_settings' => :'FormulaSettings',
        :'force_full_calculate' => :'BOOLEAN',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.auto_compress_pictures = attributes[:auto_compress_pictures] if attributes.key?(:auto_compress_pictures)
      self.auto_recover = attributes[:auto_recover] if attributes.key?(:auto_recover)
      self.build_version = attributes[:build_version] if attributes.key?(:build_version)
      self.calc_mode = attributes[:calc_mode] if attributes.key?(:calc_mode)
      self.calculation_id = attributes[:calculation_id] if attributes.key?(:calculation_id)
      self.check_comptiliblity = attributes[:check_comptiliblity] if attributes.key?(:check_comptiliblity)
      self.check_excel_restriction = attributes[:check_excel_restriction] if attributes.key?(:check_excel_restriction)
      self.crash_save = attributes[:crash_save] if attributes.key?(:crash_save)
      self.create_calc_chain = attributes[:create_calc_chain] if attributes.key?(:create_calc_chain)
      self.data_extract_load = attributes[:data_extract_load] if attributes.key?(:data_extract_load)
      self.date1904 = attributes[:date1904] if attributes.key?(:date1904)
      self.display_drawing_objects = attributes[:display_drawing_objects] if attributes.key?(:display_drawing_objects)
      self.enable_macros = attributes[:enable_macros] if attributes.key?(:enable_macros)
      self.first_visible_tab = attributes[:first_visible_tab] if attributes.key?(:first_visible_tab)
      self.hide_pivot_field_list = attributes[:hide_pivot_field_list] if attributes.key?(:hide_pivot_field_list)
      self.is_default_encrypted = attributes[:is_default_encrypted] if attributes.key?(:is_default_encrypted)
      self.is_hidden = attributes[:is_hidden] if attributes.key?(:is_hidden)
      self.is_h_scroll_bar_visible = attributes[:is_h_scroll_bar_visible] if attributes.key?(:is_h_scroll_bar_visible)
      self.is_minimized = attributes[:is_minimized] if attributes.key?(:is_minimized)
      self.is_v_scroll_bar_visible = attributes[:is_v_scroll_bar_visible] if attributes.key?(:is_v_scroll_bar_visible)
      self.iteration = attributes[:iteration] if attributes.key?(:iteration)
      self.language_code = attributes[:language_code] if attributes.key?(:language_code)
      self.max_change = attributes[:max_change] if attributes.key?(:max_change)
      self.max_iteration = attributes[:max_iteration] if attributes.key?(:max_iteration)
      self.memory_setting = attributes[:memory_setting] if attributes.key?(:memory_setting)
      self.number_decimal_separator = attributes[:number_decimal_separator] if attributes.key?(:number_decimal_separator)
      self.number_group_separator = attributes[:number_group_separator] if attributes.key?(:number_group_separator)
      self.parsing_formula_on_open = attributes[:parsing_formula_on_open] if attributes.key?(:parsing_formula_on_open)
      self.precision_as_displayed = attributes[:precision_as_displayed] if attributes.key?(:precision_as_displayed)
      self.recalculate_before_save = attributes[:recalculate_before_save] if attributes.key?(:recalculate_before_save)
      self.re_calculate_on_open = attributes[:re_calculate_on_open] if attributes.key?(:re_calculate_on_open)
      self.recommend_read_only = attributes[:recommend_read_only] if attributes.key?(:recommend_read_only)
      self.region = attributes[:region] if attributes.key?(:region)
      self.remove_personal_information = attributes[:remove_personal_information] if attributes.key?(:remove_personal_information)
      self.repair_load = attributes[:repair_load] if attributes.key?(:repair_load)
      self.shared = attributes[:shared] if attributes.key?(:shared)
      self.sheet_tab_bar_width = attributes[:sheet_tab_bar_width] if attributes.key?(:sheet_tab_bar_width)
      self.show_tabs = attributes[:show_tabs] if attributes.key?(:show_tabs)
      self.update_adjacent_cells_border = attributes[:update_adjacent_cells_border] if attributes.key?(:update_adjacent_cells_border)
      self.update_links_type = attributes[:update_links_type] if attributes.key?(:update_links_type)
      self.window_height = attributes[:window_height] if attributes.key?(:window_height)
      self.window_left = attributes[:window_left] if attributes.key?(:window_left)
      self.window_top = attributes[:window_top] if attributes.key?(:window_top)
      self.window_width = attributes[:window_width] if attributes.key?(:window_width)
      self.author = attributes[:author] if attributes.key?(:author)
      self.check_custom_number_format = attributes[:check_custom_number_format] if attributes.key?(:check_custom_number_format)
      self.protection_type = attributes[:protection_type] if attributes.key?(:protection_type)
      self.globalization_settings = attributes[:globalization_settings] if attributes.key?(:globalization_settings)
      self.password = attributes[:password] if attributes.key?(:password)
      self.write_protection = attributes[:write_protection] if attributes.key?(:write_protection)
      self.is_encrypted = attributes[:is_encrypted] if attributes.key?(:is_encrypted)
      self.is_protected = attributes[:is_protected] if attributes.key?(:is_protected)
      self.max_row = attributes[:max_row] if attributes.key?(:max_row)
      self.max_column = attributes[:max_column] if attributes.key?(:max_column)
      self.significant_digits = attributes[:significant_digits] if attributes.key?(:significant_digits)
      self.check_compatibility = attributes[:check_compatibility] if attributes.key?(:check_compatibility)
      self.paper_size = attributes[:paper_size] if attributes.key?(:paper_size)
      self.max_rows_of_shared_formula = attributes[:max_rows_of_shared_formula] if attributes.key?(:max_rows_of_shared_formula)
      self.compliance = attributes[:compliance] if attributes.key?(:compliance)
      self.quote_prefix_to_style = attributes[:quote_prefix_to_style] if attributes.key?(:quote_prefix_to_style)
      self.formula_settings = attributes[:formula_settings] if attributes.key?(:formula_settings)
      self.force_full_calculate = attributes[:force_full_calculate] if attributes.key?(:force_full_calculate)
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
