require 'ft-ffi/struct/face_rec'
require 'ft-ffi/struct/multiple_masters/multi_master'

module FT

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Get_Multi_Master
 # FT_Error  FT_Get_Multi_Master( FT_Face face, FT_Multi_Master  *amaster );
  ft_function 'Get_Multi_Master', FaceRec.ptr(:in), Multi_Master.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Get_MM_Var
  # FT_Error FT_Get_MM_Var( FT_Face face, FT_MM_Var* *amaster );
  ft_function 'Get_MM_Var', FaceRec.ptr(:in), :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Set_MM_Design_Coordinates
  # FT_Error FT_Set_MM_Design_Coordinates( FT_Face   face, FT_UInt   num_coords, FT_Long*  coords )
  ft_function 'Set_MM_Design_Coordinates', FaceRec.ptr, :FT_UInt, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Set_Var_Design_Coordinates
  # FT_Error FT_Set_Var_Design_Coordinates( FT_Face    face, FT_UInt    num_coords, FT_Fixed*  coords );
  ft_function 'Set_Var_Design_Coordinates', FaceRec.ptr, :FT_UInt, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Set_MM_Blend_Coordinates
  # FT_Error FT_Set_MM_Blend_Coordinates( FT_Face    face, FT_UInt    num_coords, FT_Fixed*  coords )
  ft_function 'Set_MM_Blend_Coordinates', FaceRec.ptr, :FT_UInt, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Set_Var_Blend_Coordinates
  # FT_Error FT_Set_Var_Blend_Coordinates( FT_Face    face, FT_UInt    num_coords, FT_Fixed*  coords )
  ft_function 'Set_Var_Blend_Coordinates', FaceRec.ptr, :FT_UInt, :pointer
end