require_relative '../struct/face_rec'
require_relative '../struct/image/vector'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-pfr_fonts.html

  # https://www.freetype.org/freetype2/docs/reference/ft2-pfr_fonts.html#FT_Get_PFR_Metrics
  # FT_Error FT_Get_PFR_Metrics(
  #   FT_Face    face,
  #   FT_UInt   *aoutline_resolution,
  #   FT_UInt   *ametrics_resolution,
  #   FT_Fixed  *ametrics_x_scale,
  #   FT_Fixed  *ametrics_y_scale );
  ft_function 'Get_PFR_Metrics', FaceRec.ptr(:in), :pointer, :pointer, :pointer, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-pfr_fonts.html#FT_Get_PFR_Kerning
  # FT_Error FT_Get_PFR_Kerning(
  #   FT_Face     face,
  #   FT_UInt     left,
  #   FT_UInt     right,
  #   FT_Vector  *avector );
  ft_function 'Get_PFR_Kerning', FaceRec.ptr(:in), :FT_UInt, :FT_UInt, Vector.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-pfr_fonts.html#FT_Get_PFR_Advance
  # FT_Error FT_Get_PFR_Advance(
  #   FT_Face   face,
  #   FT_UInt   gindex,
  #   FT_Pos   *aadvance )
  ft_function 'Get_PFR_Advance', FaceRec.ptr(:in), :FT_UInt, :pointer
end