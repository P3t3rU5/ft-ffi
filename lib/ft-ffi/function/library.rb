require 'ft-ffi/struct/library_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Done_FreeType
  # FT_Error FT_Done_FreeType(FT_Library library)
  ft_function 'Done_FreeType', LibraryRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Init_FreeType
  # FT_Error FT_Init_FreeType(FT_Library* library)
  ft_function 'Init_FreeType', LibraryRec.ptr(:out)
end