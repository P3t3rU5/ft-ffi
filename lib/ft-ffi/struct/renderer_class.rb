require 'ft-ffi/enum/glyph_format'
require 'ft-ffi/struct/glyph/glyph_slot_rec'
require 'ft-ffi/struct/matrix'
require 'ft-ffi/struct/vector'
require 'ft-ffi/struct/bbox'
require 'ft-ffi/struct/raster_funcs'

module FT
  Renderer_RenderFunc = callback 'Renderer_RenderFunc', [RendererRec, GlyphSlotRec, :FT_UInt, Vector], :FT_Error
  Renderer_TransformFunc = callback 'Renderer_TransformFunc', [RendererRec, GlyphSlotRec, Matrix, Vector], :FT_Error
  Renderer_GetCBoxFunc = callback 'Renderer_GetCBoxFunc', [RendererRec, GlyphSlotRec, BBox], :void
  Renderer_SetModeFunc = callback 'Renderer_SetModeFunc', [RendererRec, :FT_ULong, :FT_Pointer], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Renderer_Class
  class Renderer_Class < FFIAdditions::Struct
    layout root:                      Module_Class,

           glyph_format:               GlyphFormat,

           render_glyph:       Renderer_RenderFunc,
           transform_glyph: Renderer_TransformFunc,
           get_glyph_cbox:    Renderer_GetCBoxFunc,
           set_mode:          Renderer_SetModeFunc,

           raster_class:              Raster_Funcs
  end
end