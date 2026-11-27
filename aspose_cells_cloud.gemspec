# frozen_string_literal: true

require_relative 'lib/aspose_cells_cloud/version'

Gem::Specification.new do |spec|
  spec.name        = 'aspose_cells_cloud'
  spec.version     = Aspose::Cells::Cloud::VERSION
  spec.authors     = ['Aspose.Cells Cloud Team']
  spec.email       = ['support@aspose.cloud']

  spec.summary     = 'Aspose.Cells Cloud SDK for Ruby'
  spec.description = <<~DESC
    Generated from aspose.cells.cloud.specification.json: one class per model
    and per operation, plus a hand-written Net::HTTP client, configuration and
    response infrastructure. Zero runtime dependencies - only the Ruby standard
    library (net/http, uri, json, date, time, securerandom) is used.
  DESC
  spec.homepage = 'https://products.aspose.cloud/cells/'
  spec.license  = 'MIT'

  spec.files         = Dir['lib/**/*.rb'] + Dir['spec/**/*.rb'] + %w[aspose_cells_cloud.gemspec Gemfile]
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata = {
    'homepage_uri' => spec.homepage,
    'source_code_uri' => 'https://github.com/aspose-cells-cloud/aspose-cells-cloud-ruby',
    'documentation_uri' => 'https://reference.aspose.cloud/cells/',
  }

  # No runtime dependencies. rspec is a development-only dependency; the
  # offline verification pipeline runs the system-wide rspec without bundler.
  spec.add_development_dependency 'rspec', '~> 3.13'
end
