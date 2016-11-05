require 'ft-ffi/struct/face_rec'

module FT
  # http://www.freetype.org/freetype2/docs/reference/ft2-gx_validation.html

  # https://www.freetype.org/freetype2/docs/reference/ft2-gx_validation.html#FT_TrueTypeGX_Validate
  # FT_Error FT_TrueTypeGX_Validate(
  #    FT_Face   face,
  #    FT_UInt   validation_flags,
  #    FT_Bytes  tables[FT_VALIDATE_GX_LENGTH],
  #    FT_UInt   table_length )
  ft_function 'TrueTypeGX_Validate', FaceRec.ptr(:in), :FT_UInt, :pointer, :FT_UInt

  # https://www.freetype.org/freetype2/docs/reference/ft2-gx_validation.html#FT_TrueTypeGX_Free
  # void FT_TrueTypeGX_Free( FT_Face   face, FT_Bytes  table )
  attach_function 'TrueTypeGX_Free', 'FT_TrueTypeGX_Free', [FaceRec.ptr(:in), :pointer], :void

  # FT_Error FT_ClassicKern_Validate(
  #  FT_Face    face,
  #  FT_UInt    validation_flags,
  #  FT_Bytes  *ckern_table )
  ft_function 'ClassicKern_Validate', FaceRec.ptr(:in), :FT_UInt, :pointer

  # void FT_ClassicKern_Free( FT_Face   face, FT_Bytes  table )
  attach_function 'ClassicKern_Free', 'FT_ClassicKern_Free', [FaceRec.ptr(:in), :pointer], :void
end