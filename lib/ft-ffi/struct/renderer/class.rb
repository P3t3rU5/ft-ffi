require_relative '../../enum/image/glyph_format'
require_relative '../glyph/rec'
require_relative '../matrix'
require_relative '../image/vector'
require_relative '../image/bbox'
require_relative '../image/raster_funcs'

module FT
  Renderer_RenderFunc = callback 'Renderer_RenderFunc', [RendererRec.ptr, GlyphSlotRec.ptr, :FT_UInt, Vector.ptr], :FT_Error
  Renderer_TransformFunc = callback 'Renderer_TransformFunc', [RendererRec.ptr, GlyphSlotRec.ptr, Matrix.ptr, Vector.ptr], :FT_Error
  Renderer_GetCBoxFunc = callback 'Renderer_GetCBoxFunc', [RendererRec.ptr, GlyphSlotRec.ptr, BBox.ptr], :void
  Renderer_SetModeFunc = callback 'Renderer_SetModeFunc', [RendererRec.ptr, :FT_ULong, :FT_Pointer], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Renderer_Class
  class Renderer_Class < FFIAdditions::Struct
    def root; end
    def root=(v); end
    def glyph_format; end
    def glyph_format=(v); end
    def render_glyph; end
    def render_glyph=(v); end
    def transform_glyph; end
    def transform_glyph=(v); end
    def get_glyph_cbox; end
    def get_glyph_cbox=(v); end
    def set_mode; end
    def set_mode=(v); end
    def raster_class; end
    def raster_class=(v); end

    layout root:            Module_Class,

           glyph_format:    GlyphFormat,

           render_glyph:    Renderer_RenderFunc,
           transform_glyph: Renderer_TransformFunc,
           get_glyph_cbox:  Renderer_GetCBoxFunc,
           set_mode:        Renderer_SetModeFunc,

           raster_class:    Raster_Funcs.ptr
  end
end