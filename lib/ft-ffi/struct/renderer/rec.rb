require_relative '../../enum/image/glyph_format'
require_relative '../module/rec'
require_relative 'class'
require_relative '../glyph/class'

module FT
  # Raster_RenderFunc = callback 'Raster_RenderFunc', [:pointer, Raster_Params], :int

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Renderer
  class RendererRec < FFIAdditions::Struct
    def root; end
    def root=(v); end
    def clazz; end
    def clazz=(v); end
    def glyph_format; end
    def glyph_format=(v); end
    def glyph_class; end
    def glyph_class=(v); end
    def image; end
    def image=(v); end
    def raster_render; end
    def raster_render=(v); end
    def render; end
    def render=(v); end

    layout root:          ModuleRec.ptr,
           clazz:         Renderer_Class.ptr,
           glyph_format:  GlyphFormat,
           glyph_class:   GlyphClass.ptr,

           image:         :pointer,
           raster_render: Raster_RenderFunc,
           render:        Renderer_RenderFunc
  end
end