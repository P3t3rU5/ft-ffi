require_relative 'char_map_rec'
require_relative 'cmap_class_rec'

module FT
  # internal charmap object structure
  class CMapRec < FFIAdditions::Struct
    layout charmap: CharMapRec,
           clazz:   CMap_ClassRec
  end
end
