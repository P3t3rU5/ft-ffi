require_relative '../struct/face_rec'
require_relative '../struct/size_rec'

module FT
  # Size Management
  # http://www.freetype.org/freetype2/docs/reference/ft2-sizes_management.html

  # New_Size
  # https://www.freetype.org/freetype2/docs/reference/ft2-sizes_management.html#FT_New_Size
  # FT_Error FT_New_Size( FT_Face face, FT_Size* size );
  ft_function 'New_Size', FaceRec.ptr(:in), SizeRec.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-sizes_management.html#FT_Done_Size
  # FT_Error FT_Done_Size( FT_Size  size );
  ft_function 'Done_Size', SizeRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-sizes_management.html#FT_Activate_Size
  # FT_Error FT_Activate_Size( FT_Size  size );
  ft_function 'Activate_Size', SizeRec.ptr(:in)
end