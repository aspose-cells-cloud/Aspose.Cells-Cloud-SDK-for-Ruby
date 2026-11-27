# frozen_string_literal: true
=begin
--------------------------------------------------------------------------------------------------------------------
 <copyright company="Aspose" file="options.rb">
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

require 'json'

module AsposeCellsCloud
  # Mutable state shared by every option while a request is being prepared.
  #
  # Options are lambdas taking this context. Known spec parameters are
  # assigned through the generated request's setters; unknown ones are
  # collected here and merged into the query string by RequestAdapter.
  class RequestContext
    # @return [Object] the generated request.
    attr_reader :request
    # @return [Hash] implicit query parameters.
    attr_reader :extra_query

    def initialize(request)
      @request = request
      @extra_query = {}
    end

    # Adds an implicit query parameter.
    #
    # @param name [String, Symbol] wire name.
    # @param value [Object] value.
    def add_query(name, value)
      @extra_query[name.to_s] = value
    end

    # Assigns a value to a known request attribute, or records it as an
    # implicit query parameter.
    #
    # @param wire_name [String, Symbol] spec parameter name.
    # @param value [Object] value.
    def set_parameter(wire_name, value)
      wire = wire_name.to_s
      attribute = Options.snake_case(wire)
      [attribute, attribute + '_'].each do |candidate|
        setter = candidate + '='
        if @request.respond_to?(setter)
          @request.public_send(setter, value)
          return value
        end
      end
      add_query(wire, value)
    end
  end

  # Functional options shared by the convenience facade modules.
  #
  # An option is any callable accepting a {RequestContext}; the helpers
  # below build them. Facade methods also accept a Hash of wire names to
  # values, a single callable, or an Array of either.
  module Options
    module_function

    # Converts a spec wire name to the generated attribute name.
    #
    # @param name [String, Symbol]
    # @return [String]
    def snake_case(name)
      s1 = name.to_s.gsub(/(.)([A-Z][a-z]+)/, '\1_\2')
      s1.gsub(/([a-z0-9])([A-Z])/, '\1_\2').downcase
    end

    # Sets a spec-defined optional parameter on the generated request.
    #
    # The wire name is matched against the request's generated setters
    # using its snake_case form. Parameters without a dedicated slot fall
    # back to an implicit query parameter.
    #
    # @param name [String, Symbol] spec parameter name (wire name).
    # @param value [Object] value.
    # @return [Proc]
    def common_parameter(name, value)
      lambda do |context|
        context.set_parameter(name, value)
      end
    end

    # Appends an implicit query parameter to the request URL.
    #
    # @param name [String, Symbol]
    # @param value [Object]
    # @return [Proc]
    def query_parameter(name, value)
      lambda do |context|
        context.add_query(name, value)
      end
    end

    # Appends several implicit query parameters.
    #
    # @param params [Hash]
    # @return [Proc]
    def query_parameters(params)
      lambda do |context|
        params.each { |name, value| context.add_query(name, value) }
      end
    end

    # Combines several options into one.
    #
    # @param options [Array<Proc>]
    # @return [Proc]
    def raw(*options)
      lambda do |context|
        Options.apply_options(context, options)
      end
    end

    # Applies every option to the request context.
    #
    # @param context [RequestContext]
    # @param options [nil, Hash, Proc, Array]
    def apply_options(context, options)
      return if options.nil?

      if options.is_a?(Hash)
        options.each do |name, value|
          common_parameter(name, value).call(context)
        end
      elsif options.is_a?(Array)
        options.each { |option| apply_options(context, option) }
      elsif options.respond_to?(:call)
        options.call(context)
      else
        raise ArgumentError, "unsupported option: #{options.class}"
      end
    end

    # Serializes a SaveOptions model or Hash into the implicit
    # ``SaveOptions`` query parameter.
    #
    # @param value [String, Hash, Object]
    # @return [Proc]
    def save_options(value)
      text =
        if value.is_a?(String)
          value
        elsif value.respond_to?(:to_hash)
          JSON.generate(value.to_hash)
        else
          JSON.generate(value)
        end
      query_parameter('SaveOptions', text)
    end
  end

  # Convenience mixin: feature modules `extend` it to expose the generic
  # option builders as their own module methods.
  module OptionHelpers
    # @see Options.common_parameter
    def common_parameter(name, value)
      Options.common_parameter(name, value)
    end

    # @see Options.query_parameter
    def query_parameter(name, value)
      Options.query_parameter(name, value)
    end

    # @see Options.query_parameters
    def query_parameters(params)
      Options.query_parameters(params)
    end

    # @see Options.raw
    def raw(*options)
      Options.raw(*options)
    end
  end
end
