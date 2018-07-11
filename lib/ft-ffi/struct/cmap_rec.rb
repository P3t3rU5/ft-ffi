require_relative 'char_map_rec'
require_relative 'cmap_class_rec'

module FT
  # internal charmap object structure
  class CMapRec < FFIAdditions::Struct
    def charmap; end
    def charmap=(v); end
    def clazz; end
    def clazz=(v); end

    layout charmap: CharMapRec,
           clazz:   CMap_ClassRec
  end
end
