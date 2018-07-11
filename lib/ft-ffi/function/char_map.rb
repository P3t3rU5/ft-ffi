require_relative '../struct/char_map_rec'
require_relative '../struct/cmap_class_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Charmap_Index
  def self.Get_Charmap_Index(chamap); end
  # FT_Int FT_Get_Charmap_Index( FT_CharMap charmap );
  attach_function 'Get_Charmap_Index', 'FT_Get_Charmap_Index', [CharMapRec.ptr(:in)], :int
end