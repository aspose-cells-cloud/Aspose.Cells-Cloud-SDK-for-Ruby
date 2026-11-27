# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="searcher.rb">
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

require_relative 'sdkutil'

module AsposeCellsCloud
  # Find-and-replace facades for local and cloud spreadsheets (v4.0 API).
  module Searcher
    extend OptionHelpers

    # A single text match returned by the search endpoints.
    class TextItem
      # @return [String] matched text.
      attr_reader :text
      # @return [String] worksheet name.
      attr_reader :worksheet
      # @return [String] cell position (e.g. ``Cell:B2``).
      attr_reader :position

      # @param text [String]
      # @param worksheet [String]
      # @param position [String]
      def initialize(text, worksheet = '', position = '')
        @text = text
        @worksheet = worksheet
        @position = position
      end

      # @param other [Object]
      # @return [Boolean]
      def ==(other)
        other.is_a?(TextItem) &&
          other.text == text &&
          other.worksheet == worksheet &&
          other.position == position
      end
      alias eql? ==

      # @return [Integer]
      def hash
        [text, worksheet, position].hash
      end
    end

    module_function

    # Searches a local spreadsheet for +text+ within +worksheet+.
    #
    # @return [Array<TextItem>]
    def search(client, src, worksheet, text, options: nil)
      SdkUtil.require_arg(
        worksheet && !worksheet.to_s.empty?, 'worksheet is required'
      )
      SdkUtil.require_arg(
        text && !text.to_s.empty?, 'text is required'
      )
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::SearchSpreadsheetContentRequest.new(
        search_text: text, spreadsheet: data
      )
      response = SdkUtil.execute(
        client, request,
        [common_parameter('worksheet', worksheet), options],
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
      decode_text_items(response)
    end

    # Replaces text in a local spreadsheet and writes the result to +sink+.
    def replace(client, src, sink, old_value, new_value, options: nil)
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::ReplaceSpreadsheetContentRequest.new(
        replace_text: new_value, search_text: old_value, spreadsheet: data
      )
      response = SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # Searches text in a worksheet of a cloud workbook.
    #
    # @return [Array<TextItem>]
    def search_worksheet(client, ref, worksheet, text, options: nil)
      name, folder, storage_name = SdkUtil.split_workbook_ref(ref)
      SdkUtil.require_arg(
        name && !name.to_s.empty? &&
          worksheet && !worksheet.to_s.empty? &&
          text && !text.to_s.empty?,
        'workbook name, worksheet and text are required'
      )

      request = AsposeCellsCloud::SearchContentInRemoteWorksheetRequest.new(
        name: name, search_text: text, worksheet: worksheet
      )
      response = SdkUtil.execute(
        client, request,
        [SdkUtil.workbook_options(folder, storage_name), options]
      )
      decode_text_items(response)
    end

    # Searches text in a cell range of a cloud worksheet.
    #
    # @return [Array<TextItem>]
    def search_range(client, ref, worksheet, cell_area, text, options: nil)
      name, folder, storage_name = SdkUtil.split_workbook_ref(ref)
      SdkUtil.require_arg(
        name && !name.to_s.empty? &&
          worksheet && !worksheet.to_s.empty? &&
          cell_area && !cell_area.to_s.empty? &&
          text && !text.to_s.empty?,
        'workbook name, worksheet, cell area and text are required'
      )

      request = AsposeCellsCloud::SearchContentInRemoteRangeRequest.new(
        cell_area: cell_area, name: name, search_text: text, worksheet: worksheet
      )
      response = SdkUtil.execute(
        client, request,
        [SdkUtil.workbook_options(folder, storage_name), options]
      )
      decode_text_items(response)
    end

    # Replaces text in a cloud workbook in place.
    def replace_workbook(client, ref, old_value, new_value, options: nil)
      name, folder, storage_name = SdkUtil.split_workbook_ref(ref)
      SdkUtil.require_arg(
        name && !name.to_s.empty? &&
          old_value && !old_value.to_s.empty? &&
          new_value && !new_value.to_s.empty?,
        'workbook name, old value and new value are required'
      )

      request = AsposeCellsCloud::ReplaceContentInRemoteSpreadsheetRequest.new(
        name: name, replace_text: new_value, search_text: old_value
      )
      SdkUtil.execute(
        client, request,
        [SdkUtil.workbook_options(folder, storage_name), options]
      )
    end

    # Replaces text in a worksheet of a cloud workbook in place.
    def replace_worksheet(client, ref, worksheet, old_value, new_value, options: nil)
      name, folder, storage_name = SdkUtil.split_workbook_ref(ref)
      SdkUtil.require_arg(
        name && !name.to_s.empty? &&
          worksheet && !worksheet.to_s.empty? &&
          old_value && !old_value.to_s.empty? &&
          new_value && !new_value.to_s.empty?,
        'workbook name, worksheet, old value and new value are required'
      )

      request = AsposeCellsCloud::ReplaceContentInRemoteWorksheetRequest.new(
        name: name, replace_text: new_value, search_text: old_value,
        worksheet: worksheet
      )
      SdkUtil.execute(
        client, request,
        [SdkUtil.workbook_options(folder, storage_name), options]
      )
    end

    # Replaces text in a cell range of a cloud worksheet in place.
    def replace_range(client, ref, worksheet, cell_area, old_value, new_value, options: nil)
      name, folder, storage_name = SdkUtil.split_workbook_ref(ref)
      SdkUtil.require_arg(
        name && !name.to_s.empty? &&
          worksheet && !worksheet.to_s.empty? &&
          cell_area && !cell_area.to_s.empty? &&
          old_value && !old_value.to_s.empty? &&
          new_value && !new_value.to_s.empty?,
        'workbook name, worksheet, cell area, old value and new value are required'
      )

      request = AsposeCellsCloud::ReplaceContentInRemoteRangeRequest.new(
        cell_area: cell_area, name: name, replace_text: new_value,
        search_text: old_value, worksheet: worksheet
      )
      SdkUtil.execute(
        client, request,
        [SdkUtil.workbook_options(folder, storage_name), options]
      )
    end

    # @api private
    def decode_text_items(response)
      payload = SdkUtil.response_json(response) || {}
      items = payload.is_a?(Hash) ? (payload['TextItems'] || []) : []
      items.map do |item|
        TextItem.new(
          item['Content'] || '',
          item['Worksheet'] || '',
          item['Position'] || ''
        )
      end
    end

    # --- Option helpers ---

    # Scopes the search or replace to one worksheet.
    def worksheet(value)
      common_parameter('worksheet', value)
    end

    # Scopes the search or replace to a cell range (A1 style).
    def cell_area(value)
      common_parameter('cellArea', value)
    end

    # Requests a case-insensitive search.
    def ignoring_case(value)
      common_parameter('ignoringCase', value)
    end

    # Sets the workbook open password.
    def password(value)
      common_parameter('password', value)
    end

    # Sets the region.
    def region(value)
      common_parameter('region', value)
    end

    # Sets the cloud folder that contains the workbook.
    def folder(value)
      common_parameter('folder', value)
    end

    # Sets the cloud storage name.
    def storage_name(value)
      common_parameter('storageName', value)
    end
  end
end
