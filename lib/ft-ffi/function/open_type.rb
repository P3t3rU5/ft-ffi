require_relative '../struct/face_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-ot_validation.html#FT_OpenType_Free
  def self.OpenType_Free(face, table); end
  # void FT_OpenType_Free( FT_Face   face, FT_Bytes  table );
  attach_function 'OpenType_Free', 'FT_OpenType_Free', [FaceRec.ptr(:in), :FT_Bytes], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-ot_validation.html#FT_OpenType_Validate
  def self.OpenType_Validate(face, validation_flags, bASE_table, gDEF_table, gPOS_table, gSUB_table, jSTF_table); end
  # FT_Error FT_OpenType_Validate(
  #   FT_Face    face,
  #   FT_UInt    validation_flags,
  #   FT_Bytes  *BASE_table,
  #   FT_Bytes  *GDEF_table,
  #   FT_Bytes  *GPOS_table,
  #   FT_Bytes  *GSUB_table,
  #   FT_Bytes  *JSTF_table )
  ft_function 'OpenType_Validate',
              FaceRec.ptr(:in), :FT_UInt, :FT_Bytes, :FT_Bytes, :FT_Bytes, :FT_Bytes, :FT_Bytes, :FT_Bytes
end