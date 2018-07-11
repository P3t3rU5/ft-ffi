require_relative '../struct/face_rec'
require_relative '../struct/win_fnt_header_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-winfnt_fonts.html#FT_Get_WinFNT_Header
  def self.Get_WinFNT_Header(aheader); end
  # FT_Error FT_Get_WinFNT_Header( FT_Face face, FT_WinFNT_HeaderRec  *aheader );
  ft_function 'Get_WinFNT_Header', FaceRec.ptr(:in), WinFNT_HeaderRec.ptr(:out)
end