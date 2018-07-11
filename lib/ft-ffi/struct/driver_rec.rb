require_relative 'module/rec'
require_relative 'driver_class_rec'
require_relative 'list/rec'
require_relative 'glyph/loader_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Driver
  class DriverRec < FFIAdditions::Struct
    def root; end
    def root=(v); end
    def clazz; end
    def clazz=(v); end
    def faces_list; end
    def faces_list=(v); end
    def glyph_loader; end
    def glyph_loader=(v); end

    layout root:         ModuleRec.ptr,
           clazz:        Driver_ClassRec.ptr,
           faces_list:   ListRec.ptr,
           glyph_loader: GlyphLoaderRec.ptr
  end
end