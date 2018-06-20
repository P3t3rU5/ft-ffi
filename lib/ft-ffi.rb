require_relative 'ft-ffi/version'
require 'ffi-additions/struct'
require 'ft-ffi/config'

module FT
  class FreeTypeError < StandardError; end
  require_relative 'ft-ffi/lib_base'

  require 'ft-ffi/struct/stubs'
  require 'ft-ffi/struct/library_rec'
  require 'ft-ffi/struct/service_desc_rec'
  require 'ft-ffi/struct/glyph/glyph_metrics'

  # TODO use FT_Library_Version
end