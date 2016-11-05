require 'ft-ffi/struct/face_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-font_formats.html#FT_Get_Font_Format
  # const char* FT_Get_Font_Format( FT_Face  face );
  attach_function 'Get_Font_Format', 'FT_Get_Font_Format', [FaceRec.ptr(:in)], :string

  # deprecated
  # const char* FT_Get_X11_Font_Format( FT_Face  face );
  attach_function 'Get_X11_Font_Format', 'FT_Get_X11_Font_Format', [FaceRec.ptr(:in)], :string
end