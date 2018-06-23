require_relative '../struct/face_rec'
require_relative '../struct/multiple_masters/multi_master'
require_relative '../struct/multiple_masters/mm_var'

module FT

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Get_Multi_Master
 # FT_Error  FT_Get_Multi_Master( FT_Face face, FT_Multi_Master  *amaster );
  ft_function 'Get_Multi_Master', FaceRec.ptr(:in), Multi_Master.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Get_MM_Var
  # FT_Error FT_Get_MM_Var( FT_Face face, FT_MM_Var* *amaster );
  ft_function 'Get_MM_Var', FaceRec.ptr(:in), MM_Var.ptr

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Done_MM_Var
  # FT_ErrorFT_Done_MM_Var( FT_Library library, FT_MM_Var *amaster );
  ft_function 'Done_MM_Var', LibraryRec.ptr, MM_Var.ptr

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Set_MM_Design_Coordinates
  # FT_Error FT_Set_MM_Design_Coordinates( FT_Face   face, FT_UInt   num_coords, FT_Long*  coords )
  ft_function 'Set_MM_Design_Coordinates', FaceRec.ptr, :FT_UInt, :pointer

  #define FT_VAR_AXIS_FLAG_HIDDEN  1
  VAR_AXIS_FLAG_HIDDEN = 1

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Get_Var_Axis_Flags
  # FT_Error FT_Get_Var_Axis_Flags( FT_MM_Var* master, FT_UInt axis_index, FT_UInt* flags );
  ft_function 'Get_Var_Axis_Flags', MM_Var.ptr(:in), :FT_UInt, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Get_Var_Design_Coordinates
  # FT_Error FT_Get_Var_Design_Coordinates( FT_Face face, FT_UInt num_coords, FT_Fixed*  coords );
  ft_function 'Get_Var_Design_Coordinates', FaceRec.ptr(:in), :FT_UInt, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Set_Var_Design_Coordinates
  # FT_Error FT_Set_Var_Design_Coordinates( FT_Face    face, FT_UInt    num_coords, FT_Fixed*  coords );
  ft_function 'Set_Var_Design_Coordinates', FaceRec.ptr, :FT_UInt, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Get_MM_Blend_Coordinates
  # FT_Error FT_Get_MM_Blend_Coordinates( FT_Face face, FT_UInt num_coords, FT_Fixed* coords );
  ft_function 'Get_MM_Blend_Coordinates', FaceRec.ptr(:in), :FT_UInt, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Set_MM_Blend_Coordinates
  # FT_Error FT_Set_MM_Blend_Coordinates( FT_Face    face, FT_UInt    num_coords, FT_Fixed*  coords )
  ft_function 'Set_MM_Blend_Coordinates', FaceRec.ptr, :FT_UInt, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Get_Var_Blend_Coordinates
  # FT_Error FT_Get_Var_Blend_Coordinates( FT_Face face, FT_UInt num_coords, FT_Fixed* coords );
  ft_function 'Get_Var_Blend_Coordinates', FaceRec.ptr(:in), :FT_UInt, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Set_Var_Blend_Coordinates
  # FT_Error FT_Set_Var_Blend_Coordinates( FT_Face    face, FT_UInt    num_coords, FT_Fixed*  coords )
  ft_function 'Set_Var_Blend_Coordinates', FaceRec.ptr, :FT_UInt, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Set_Named_Instance
  # FT_Error FT_Set_Named_Instance( FT_Face face, FT_UInt instance_index );
  ft_function 'Set_Named_Instance', FaceRec.ptr(:in), :FT_UInt
end