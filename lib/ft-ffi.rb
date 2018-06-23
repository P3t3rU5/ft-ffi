require 'ffi-additions/struct'

module FT
  class FreeTypeError < StandardError; end
end

require_relative 'ft-ffi/version'
require_relative 'ft-ffi/config'
require_relative 'ft-ffi/lib_base'
require_relative 'ft-ffi/struct/stubs'
require_relative 'ft-ffi/struct/library_rec'
require_relative 'ft-ffi/struct/service_desc_rec'
require_relative 'ft-ffi/struct/glyph/metrics'

# TODO use FT_Library_Version
#define FREETYPE_MAJOR  2
#define FREETYPE_MINOR  9
#define FREETYPE_PATCH  1