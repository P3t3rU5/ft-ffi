require_relative '../enum/glyph_format'
require_relative 'module_rec'
require_relative 'renderer_class'
require_relative 'glyph/glyph_class'

module FT
  # Raster_RenderFunc = callback 'Raster_RenderFunc', [:pointer, Raster_Params], :int

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Renderer
  class RendererRec < FFIAdditions::Struct
    layout root:              ModuleRec.ptr,
           clazz:        Renderer_Class.ptr,
           glyph_format:        GlyphFormat,
           glyph_class:      GlyphClass.ptr,

           raster:                 :pointer,
           raster_render: Raster_RenderFunc,
           render:      Renderer_RenderFunc
  end
end