# frozen_string_literal: true
# <copyright company="Aspose" file="_common.rb">
#   Copyright (c) 2026 Aspose.Cells Cloud
# </copyright>

# Shared helpers for the Ruby SDK examples.
#
# The examples run from a checkout of +sdks/ruby_sdk+; this file puts the SDK
# library directory on the load path before requiring the SDK. Credentials
# come from the standard Cells Cloud environment variables.

require 'fileutils'

lib_dir = File.expand_path('../lib', __dir__)
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'aspose_cells_cloud'

module Examples
  DATA_DIR = File.expand_path('data', __dir__)
  OUTPUT_DIR = File.expand_path('output', __dir__)

  module_function

  # Returns a fixture path under +examples/data+.
  def data_path(name)
    File.join(DATA_DIR, name)
  end

  # Returns an output path under +examples/output+ (created on demand).
  def output_path(name)
    FileUtils.mkdir_p(OUTPUT_DIR)
    File.join(OUTPUT_DIR, name)
  end

  # Builds a client from the Cells Cloud environment variables.
  def client_from_env
    client_id = ENV['CellsCloudClientId'] || ENV['ProductClientId']
    client_secret = ENV['CellsCloudClientSecret'] || ENV['ProductClientSecret']

    if client_id.nil? || client_id.empty? || client_secret.nil? || client_secret.empty?
      raise 'Set CellsCloudClientId and CellsCloudClientSecret ' \
            '(optionally CellsCloudApiBaseUrl) before running an example.'
    end

    Aspose::Cells::Cloud::AsposeCellsCloudClient.new(
      client_id,
      client_secret,
      ENV['CellsCloudApiBaseUrl'] || 'https://api.aspose.cloud'
    )
  end

  # Executes a generated swagger-style request through the SDK client.
  def do_request(client, request)
    AsposeCellsCloud::SdkUtil.do_checked(client, request)
  end

  # Creates a cloud folder if it does not exist yet.
  def ensure_folder(client, path)
    do_request(client, AsposeCellsCloud::CreateFolderRequest.new(path: path))
  rescue StandardError
    nil
  end

  # Runs an example body and reports failures without a traceback dump.
  def run
    yield
  rescue StandardError => e
    warn "Error: #{e.message}"
    exit 1
  end
end
