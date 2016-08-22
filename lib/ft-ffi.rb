require_relative 'ft-ffi/version'
require 'ffi-additions/struct'

module FT
  class FreeTypeError < StandardError; end
  require_relative 'ft-ffi/lib_base'

  extend LibBase

  require 'ft-ffi/struct/stubs'

  # TODO use FT_Library_Version
  # FREETYPE_MAJOR = 2
  # FREETYPE_MINOR = 6
  # FREETYPE_PATCH = 5

end