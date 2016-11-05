require_relative 'ft-ffi/version'
require 'ffi-additions/struct'
require 'ft-ffi/config'

module FT
  class FreeTypeError < StandardError; end
  require_relative 'ft-ffi/lib_base'

  extend LibBase

  require 'ft-ffi/struct/stubs'
  require 'ft-ffi/struct/library_rec'
  require 'ft-ffi/struct/service_desc_rec'
  require 'ft-ffi/struct/glyph/glyph_metrics'

  if CONFIG_OPTION[:ENVIRONMENT_PROPERTIES]
    # FT_Error ft_property_string_set(
    #   FT_Library        library,
    #   const FT_String*  module_name,
    #   const FT_String*  property_name,
    #   FT_String*        value );
    attach_function 'property_string_set', 'ft_property_string_set', [LibraryRec.ptr, :string, :string, :string], :FT_Error

    # FT_Pointer ft_service_list_lookup( FT_ServiceDesc  service_descriptors, const char* service_id );
    attach_function 'service_list_lookup', 'ft_service_list_lookup', [ServiceDescRec.ptr, :string], :FT_Pointer

    # void ft_synthesize_vertical_metrics( FT_Glyph_Metrics*  metrics, FT_Pos advance );
    attach_function 'synthesize_vertical_metrics', 'ft_synthesize_vertical_metrics', [Glyph_Metrics.ptr, :FT_Pos], :void
  end

  # TODO use FT_Library_Version
  # FREETYPE_MAJOR = 2
  # FREETYPE_MINOR = 6
  # FREETYPE_PATCH = 5

end