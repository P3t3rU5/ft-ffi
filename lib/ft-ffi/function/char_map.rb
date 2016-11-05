require 'ft-ffi/struct/char_map_rec'
require 'ft-ffi/struct/cmap_class_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Charmap_Index
  # FT_EXPORT( FT_Int ) FT_Get_Charmap_Index( FT_CharMap  charmap );
  attach_function 'Get_Charmap_Index', 'FT_Get_Charmap_Index', [CharMapRec.ptr], :int

  # destroy a charmap and remove it from face's list
  # void FT_CMap_Done( FT_CMap  cmap );
  attach_function 'CMap_Done', 'FT_CMap_Done', [CMapRec.ptr], :void

  # create a new charmap and add it to charmap->face
  # FT_Error FT_CMap_New(
  #   FT_CMap_Class  clazz,
  #   FT_Pointer     init_data,
  #   FT_CharMap     charmap,
  #   FT_CMap       *acmap );
  ft_function 'CMap_New', CMap_ClassRec, :FT_Pointer, CharMapRec.ptr, CMapRec.ptr

end