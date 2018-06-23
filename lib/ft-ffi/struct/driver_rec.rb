require_relative 'module/rec'
require_relative 'driver_class_rec'
require_relative 'list/rec'
require_relative 'glyph/loader_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Driver
  class DriverRec < FFIAdditions::Struct
    layout root:              ModuleRec.ptr,
           clazz:       Driver_ClassRec.ptr,
           faces_list:          ListRec.ptr,
           glyph_loader: GlyphLoaderRec.ptr
  end
end