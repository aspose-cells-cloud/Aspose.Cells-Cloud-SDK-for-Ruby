=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="PageSetup.rb">
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

  # excel print page setting
  class PageSetup
    # Represents if elements of the document will be printed in black and white.
    # @return [BOOLEAN]
    attr_accessor :black_and_white
    # Represents the size of the bottom margin, in unit of centimeters.
    # @return [Float]
    attr_accessor :bottom_margin
    # Represent if the sheet is printed centered horizontally.
    # @return [BOOLEAN]
    attr_accessor :center_horizontally
    # Represent if the sheet is printed centered vertically.
    # @return [BOOLEAN]
    attr_accessor :center_vertically
    # Represents the first page number that will be used when this sheet is printed.
    # @return [Integer]
    attr_accessor :first_page_number
    # Represents  the number of pages tall the worksheet will be scaled to when it's printed.             The default value is 1.
    # @return [Integer]
    attr_accessor :fit_to_pages_tall
    # Represents the number of pages wide the worksheet will be scaled to when it's printed.             The default value is 1.
    # @return [Integer]
    attr_accessor :fit_to_pages_wide
    # Represents the distance from the bottom of the page to the footer, in unit of centimeters.
    # @return [Float]
    attr_accessor :footer_margin
    # Represents the distance from the top of the page to the header, in unit of centimeters.
    # @return [Float]
    attr_accessor :header_margin
    # Indicates whether the first the page number is automatically assigned.
    # @return [BOOLEAN]
    attr_accessor :is_auto_first_page_number
    # Indicates whether header and footer margins are aligned with the page margins.             If this property is true, the left header and footer will be aligned with the left margin,             and the right header and footer will be aligned with the right margin.             This option is enabled by default.
    # @return [BOOLEAN]
    attr_accessor :is_hf_align_margins
    # True means that the header/footer of the first page is different with other pages.
    # @return [BOOLEAN]
    attr_accessor :is_hf_diff_first
    # True means that the header/footer of the odd pages is different with odd pages.
    # @return [BOOLEAN]
    attr_accessor :is_hf_diff_odd_even
    # Indicates whether header and footer are scaled with document scaling.             Only applies for Excel 2007.
    # @return [BOOLEAN]
    attr_accessor :is_hf_scale_with_doc
    # If this property is False, the FitToPagesWide and FitToPagesTall properties control how the worksheet is scaled.
    # @return [BOOLEAN]
    attr_accessor :is_percent_scale
    # Represents the size of the left margin, in unit of centimeters.
    # @return [Float]
    attr_accessor :left_margin
    # Represents the order that Microsoft Excel uses to number pages when printing a large worksheet.
    # @return [String]
    attr_accessor :order
    # Represents page print orientation.
    # @return [String]
    attr_accessor :orientation
    # Represents the size of the paper.
    # @return [String]
    attr_accessor :paper_size
    # Represents the range to be printed.
    # @return [String]
    attr_accessor :print_area
    # Represents the way comments are printed with the sheet.
    # @return [String]
    attr_accessor :print_comments
    # Get and sets number of copies to print.
    # @return [Integer]
    attr_accessor :print_copies
    # Represents if the sheet will be printed without graphics.
    # @return [BOOLEAN]
    attr_accessor :print_draft
    # Specifies the type of print error displayed.
    # @return [String]
    attr_accessor :print_errors
    # Represents if cell gridlines are printed on the page.
    # @return [BOOLEAN]
    attr_accessor :print_gridlines
    # Represents if row and column headings are printed with this page.
    # @return [BOOLEAN]
    attr_accessor :print_headings
    # Represents the print quality.
    # @return [Integer]
    attr_accessor :print_quality
    # Represents the columns that contain the cells to be repeated on the left side of each page.
    # @return [String]
    attr_accessor :print_title_columns
    # Represents the rows that contain the cells to be repeated at the top of each page.
    # @return [String]
    attr_accessor :print_title_rows
    # Represents the size of the right margin, in unit of centimeters.
    # @return [Float]
    attr_accessor :right_margin
    # Represents the size of the top margin, in unit of centimeters.
    # @return [Float]
    attr_accessor :top_margin
    # Represents the scaling factor in percent. It should be between 10 and 400.
    # @return [Integer]
    attr_accessor :zoom
    # Represents the page header.
    # @return [Array<PageSection>]
    attr_accessor :header
    # Represents the page footor.
    # @return [Array<PageSection>]
    attr_accessor :footer

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'black_and_white' => :'BlackAndWhite',
        :'bottom_margin' => :'BottomMargin',
        :'center_horizontally' => :'CenterHorizontally',
        :'center_vertically' => :'CenterVertically',
        :'first_page_number' => :'FirstPageNumber',
        :'fit_to_pages_tall' => :'FitToPagesTall',
        :'fit_to_pages_wide' => :'FitToPagesWide',
        :'footer_margin' => :'FooterMargin',
        :'header_margin' => :'HeaderMargin',
        :'is_auto_first_page_number' => :'IsAutoFirstPageNumber',
        :'is_hf_align_margins' => :'IsHFAlignMargins',
        :'is_hf_diff_first' => :'IsHFDiffFirst',
        :'is_hf_diff_odd_even' => :'IsHFDiffOddEven',
        :'is_hf_scale_with_doc' => :'IsHFScaleWithDoc',
        :'is_percent_scale' => :'IsPercentScale',
        :'left_margin' => :'LeftMargin',
        :'order' => :'Order',
        :'orientation' => :'Orientation',
        :'paper_size' => :'PaperSize',
        :'print_area' => :'PrintArea',
        :'print_comments' => :'PrintComments',
        :'print_copies' => :'PrintCopies',
        :'print_draft' => :'PrintDraft',
        :'print_errors' => :'PrintErrors',
        :'print_gridlines' => :'PrintGridlines',
        :'print_headings' => :'PrintHeadings',
        :'print_quality' => :'PrintQuality',
        :'print_title_columns' => :'PrintTitleColumns',
        :'print_title_rows' => :'PrintTitleRows',
        :'right_margin' => :'RightMargin',
        :'top_margin' => :'TopMargin',
        :'zoom' => :'Zoom',
        :'header' => :'Header',
        :'footer' => :'Footer',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'black_and_white' => :'BOOLEAN',
        :'bottom_margin' => :'Float',
        :'center_horizontally' => :'BOOLEAN',
        :'center_vertically' => :'BOOLEAN',
        :'first_page_number' => :'Integer',
        :'fit_to_pages_tall' => :'Integer',
        :'fit_to_pages_wide' => :'Integer',
        :'footer_margin' => :'Float',
        :'header_margin' => :'Float',
        :'is_auto_first_page_number' => :'BOOLEAN',
        :'is_hf_align_margins' => :'BOOLEAN',
        :'is_hf_diff_first' => :'BOOLEAN',
        :'is_hf_diff_odd_even' => :'BOOLEAN',
        :'is_hf_scale_with_doc' => :'BOOLEAN',
        :'is_percent_scale' => :'BOOLEAN',
        :'left_margin' => :'Float',
        :'order' => :'String',
        :'orientation' => :'String',
        :'paper_size' => :'String',
        :'print_area' => :'String',
        :'print_comments' => :'String',
        :'print_copies' => :'Integer',
        :'print_draft' => :'BOOLEAN',
        :'print_errors' => :'String',
        :'print_gridlines' => :'BOOLEAN',
        :'print_headings' => :'BOOLEAN',
        :'print_quality' => :'Integer',
        :'print_title_columns' => :'String',
        :'print_title_rows' => :'String',
        :'right_margin' => :'Float',
        :'top_margin' => :'Float',
        :'zoom' => :'Integer',
        :'header' => :'Array<PageSection>',
        :'footer' => :'Array<PageSection>',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      self.black_and_white = attributes[:black_and_white] if attributes.key?(:black_and_white)
      self.bottom_margin = attributes[:bottom_margin] if attributes.key?(:bottom_margin)
      self.center_horizontally = attributes[:center_horizontally] if attributes.key?(:center_horizontally)
      self.center_vertically = attributes[:center_vertically] if attributes.key?(:center_vertically)
      self.first_page_number = attributes[:first_page_number] if attributes.key?(:first_page_number)
      self.fit_to_pages_tall = attributes[:fit_to_pages_tall] if attributes.key?(:fit_to_pages_tall)
      self.fit_to_pages_wide = attributes[:fit_to_pages_wide] if attributes.key?(:fit_to_pages_wide)
      self.footer_margin = attributes[:footer_margin] if attributes.key?(:footer_margin)
      self.header_margin = attributes[:header_margin] if attributes.key?(:header_margin)
      self.is_auto_first_page_number = attributes[:is_auto_first_page_number] if attributes.key?(:is_auto_first_page_number)
      self.is_hf_align_margins = attributes[:is_hf_align_margins] if attributes.key?(:is_hf_align_margins)
      self.is_hf_diff_first = attributes[:is_hf_diff_first] if attributes.key?(:is_hf_diff_first)
      self.is_hf_diff_odd_even = attributes[:is_hf_diff_odd_even] if attributes.key?(:is_hf_diff_odd_even)
      self.is_hf_scale_with_doc = attributes[:is_hf_scale_with_doc] if attributes.key?(:is_hf_scale_with_doc)
      self.is_percent_scale = attributes[:is_percent_scale] if attributes.key?(:is_percent_scale)
      self.left_margin = attributes[:left_margin] if attributes.key?(:left_margin)
      self.order = attributes[:order] if attributes.key?(:order)
      self.orientation = attributes[:orientation] if attributes.key?(:orientation)
      self.paper_size = attributes[:paper_size] if attributes.key?(:paper_size)
      self.print_area = attributes[:print_area] if attributes.key?(:print_area)
      self.print_comments = attributes[:print_comments] if attributes.key?(:print_comments)
      self.print_copies = attributes[:print_copies] if attributes.key?(:print_copies)
      self.print_draft = attributes[:print_draft] if attributes.key?(:print_draft)
      self.print_errors = attributes[:print_errors] if attributes.key?(:print_errors)
      self.print_gridlines = attributes[:print_gridlines] if attributes.key?(:print_gridlines)
      self.print_headings = attributes[:print_headings] if attributes.key?(:print_headings)
      self.print_quality = attributes[:print_quality] if attributes.key?(:print_quality)
      self.print_title_columns = attributes[:print_title_columns] if attributes.key?(:print_title_columns)
      self.print_title_rows = attributes[:print_title_rows] if attributes.key?(:print_title_rows)
      self.right_margin = attributes[:right_margin] if attributes.key?(:right_margin)
      self.top_margin = attributes[:top_margin] if attributes.key?(:top_margin)
      self.zoom = attributes[:zoom] if attributes.key?(:zoom)
      self.header = attributes[:header] if attributes.key?(:header)
      self.footer = attributes[:footer] if attributes.key?(:footer)
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
