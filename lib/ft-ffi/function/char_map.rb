module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Charmap_Index
  # FT_EXPORT( FT_Int ) FT_Get_Charmap_Index( FT_CharMap  charmap );
  attach_function 'Get_Charmap_Index', 'FT_Get_Charmap_Index', [CharMapRec.ptr], :int



end