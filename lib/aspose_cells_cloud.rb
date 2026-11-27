# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="aspose_cells_cloud.rb">
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

# Entry point of the Aspose.Cells Cloud Ruby SDK.
#
# Loads the hand-written infrastructure first, then every generated model and
# request class. Generated files are dependency-safe on their own (each model
# require_relative's its parent, each request require_relative's the
# RequestOption base), so the alphabetical glob order below is not load-order
# sensitive.

require 'json'

require_relative 'aspose_cells_cloud/version'
require_relative 'aspose_cells_cloud/sdk_error'
require_relative 'aspose_cells_cloud/configuration'
require_relative 'aspose_cells_cloud/request_option'
require_relative 'aspose_cells_cloud/rich_response'
require_relative 'aspose_cells_cloud/form_file'
require_relative 'aspose_cells_cloud/aspose_cells_cloud_client'

# Namespace of the generated model/request classes; expose the SDK version
# there too so `AsposeCellsCloud::VERSION` works like in the published gem.
module AsposeCellsCloud
  VERSION = Aspose::Cells::Cloud::VERSION unless defined?(AsposeCellsCloud::VERSION)
end

# Generated model classes (one file per model).
Dir.glob(File.join(__dir__, 'aspose_cells_cloud', 'models', '*.rb')).sort.each { |file| require file }

# Generated request classes (one file per operation).
Dir.glob(File.join(__dir__, 'aspose_cells_cloud', 'requests', '*.rb')).sort.each { |file| require file }

# Hand-written convenience facades (require the generated request classes at
# call time, so they are loaded after the generated tree).
require_relative 'aspose_cells_cloud/workbook_ref'
require_relative 'aspose_cells_cloud/datasource'
require_relative 'aspose_cells_cloud/sdkutil'
require_relative 'aspose_cells_cloud/converter'
require_relative 'aspose_cells_cloud/datacleansing'
require_relative 'aspose_cells_cloud/dataprocessing'
require_relative 'aspose_cells_cloud/editor'
require_relative 'aspose_cells_cloud/reporting'
require_relative 'aspose_cells_cloud/searcher'
