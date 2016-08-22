require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-version.html#FT_Library_Version
  # void FT_Library_Version(
  #   FT_Library   library,
  #   FT_Int      *amajor,
  #   FT_Int      *aminor,
  #   FT_Int      *apatch )
  attach_function 'Library_Version', 'FT_Library_Version', [LibraryRec.ptr(:in), :pointer, :pointer, :pointer], :void

  # Deprecated Functions
  # https://www.freetype.org/freetype2/docs/reference/ft2-version.html#FT_Face_CheckTrueTypePatents
  # FT_ERROR FT_Face_CheckTrueTypePatents( FT_Face  face );
  ft_function 'Face_CheckTrueTypePatents', FaceRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-version.html#FT_Face_SetUnpatentedHinting
  # FT_EXPORT( FT_Bool ) FT_Face_SetUnpatentedHinting( FT_Face  face, FT_Bool  value );
  attach_function 'Face_SetUnpatentedHinting', 'FT_Face_SetUnpatentedHinting', [FaceRec.ptr, :FT_Bool], :FT_Bool
end