require 'ft-ffi/struct/module_rec'
require 'ft-ffi/struct/driver_class_rec'
require 'ft-ffi/struct/list_rec'
require 'ft-ffi/struct/glyph/glyph_loader_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Driver
  class DriverRec < FFIAdditions::Struct
    layout root:              ModuleRec.ptr,
           clazz:       Driver_ClassRec.ptr,
           faces_list:          ListRec.ptr,
           glyph_loader: GlyphLoaderRec.ptr
  end
end