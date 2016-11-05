require 'ft-ffi/struct/char_map_rec'
require 'ft-ffi/struct/cmap_class_rec'

module FT
  # internal charmap object structure
  class CMapRec < FFIAdditions::Struct
    layout charmap: CharMapRec,
           clazz:   CMap_ClassRec
  end
end
