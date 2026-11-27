# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="reporting.rb">
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
  # AI report-analysis and calculation facades (v4.0 API).
  module Reporting
    extend OptionHelpers

    module_function

    # Runs an AI report analysis and returns the raw response (markdown text).
    def report_analysis(client, src, options: nil)
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::ReportAIAnalysisRequest.new(spreadsheet: data)
      SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
    end

    # Generates an AI summary and writes the markdown text to +sink+.
    def summarize(client, src, sink, options: nil)
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::SummarizeSpreadsheetRequest.new(spreadsheet: data)
      response = SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
      SdkUtil.write_sink(sink, SdkUtil.response_bytes(response))
    end

    # Aggregates cells by color and returns the raw response.
    def aggregate_by_color(client, src, options: nil)
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::AggregateCellsByColorRequest.new(spreadsheet: data)
      SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
    end

    # Runs a math calculation over +value+ and returns the raw response.
    #
    # +operation+ is ``Add``, ``Minus``, ``Multiply``, ``Divide`` or
    # ``Percentage``.
    def math_calculate(client, src, operation, value, options: nil)
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::MathCalculateRequest.new(
        operation: operation, spreadsheet: data, value: value
      )
      SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
    end

    # Evaluates a formula against a worksheet and returns the raw response.
    def calculate_formula(client, src, worksheet, formula, options: nil)
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::CalculationFormulaRequest.new(
        formula: formula, spreadsheet: data, worksheet: worksheet
      )
      SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
    end

    # Classifies a column into logical groups and returns the raw response.
    def categorize_spreadsheet(client, src, target_column, options: nil)
      data = SdkUtil.read_source(src)
      request = AsposeCellsCloud::CategorizeSpreadsheetRequest.new(
        spreadsheet: data, target_column: target_column
      )
      SdkUtil.execute(
        client, request, options,
        file_fields: { 'Spreadsheet' => :spreadsheet }
      )
    end

    # --- Option helpers ---

    # Restricts an analysis/calculation to a worksheet.
    def worksheet(value)
      common_parameter('worksheet', value)
    end

    # Restricts an analysis/calculation to a cell range (A1 style).
    def range(value)
      common_parameter('range', value)
    end

    # Alias avoiding a bare ``range`` where a local variable of that name exists.
    def range_(value)
      common_parameter('range', value)
    end

    # Sets the aggregation/calculation operation (e.g. ``count``, ``sum``).
    def operation(value)
      common_parameter('operation', value)
    end

    # Sets the color position (e.g. ``fill`` or ``font``).
    def color_position(value)
      common_parameter('colorPosition', value)
    end

    # Scopes an AI analysis/calculation to a worksheet by name.
    def sheet_name(value)
      common_parameter('sheetName', value)
    end

    # Names the category column produced by categorize.
    def new_column_name(value)
      common_parameter('newColumnName', value)
    end

    # Sets the workbook open password.
    def password(value)
      common_parameter('password', value)
    end

    # Sets the region.
    def region(value)
      common_parameter('region', value)
    end
  end
end
