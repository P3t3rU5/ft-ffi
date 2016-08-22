require 'ft-ffi/enum/glyph_format'
require 'ft-ffi/struct/raster_params'

module FT
  Raster_NewFunc = callback 'Raster_NewFunc', [:pointer, :pointer], :int
  Raster_DoneFunc = callback 'Raster_DoneFunc', [:pointer], :void
  Raster_ResetFunc = callback 'Raster_ResetFunc', [:pointer, :pointer, :ulong], :void
  Raster_SetModeFunc = callback 'Raster_SetModeFunc', [:pointer, :ulong, :pointer], :int
  Raster_RenderFunc = callback 'Raster_RenderFunc', [:pointer, Raster_Params.ptr], :int

  # https://www.freetype.org/freetype2/docs/reference/ft2-raster.html#FT_Raster_Funcs
  class Raster_Funcs < FFIAdditions::Struct
    layout glyph_format:           GlyphFormat,
           raster_new:          Raster_NewFunc,
           raster_reset:      Raster_ResetFunc,
           raster_set_mode: Raster_SetModeFunc,
           raster_render:    Raster_RenderFunc,
           raster_done:        Raster_DoneFunc
  end
end