require 'ft-ffi/struct/face_rec'
require 'ft-ffi/struct/postscript/font_info_rec'
require 'ft-ffi/struct/postscript/private_rec'
require 'ft-ffi/enum/postscript/dict_keys'

module FT

  # https://www.freetype.org/freetype2/docs/reference/ft2-type1_tables.html#FT_Has_PS_Glyph_Names
  # FT_Int FT_Has_PS_Glyph_Names( FT_Face  face )
  attach_function 'Has_PS_Glyph_Names', 'FT_Has_PS_Glyph_Names', [FaceRec.ptr(:in)], :FT_Int

  # https://www.freetype.org/freetype2/docs/reference/ft2-type1_tables.html#FT_Get_PS_Font_Info
  # FT_Error FT_Get_PS_Font_Info( FT_Face face, PS_FontInfo  afont_info )
  ft_function 'Get_PS_Font_Info', FaceRec.ptr(:in), PS_FontInfoRec.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-type1_tables.html#FT_Get_PS_Font_Private
  # FT_Error FT_Get_PS_Font_Private( FT_Face face, PS_Private  afont_private )
  ft_function 'Get_PS_Font_Private', FaceRec.ptr(:in), PS_PrivateRec.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-type1_tables.html#FT_Get_PS_Font_Value
  # FT_Long FT_Get_PS_Font_Value(
  #   FT_Face       face,
  #   PS_Dict_Keys  key,
  #   FT_UInt       idx,
  #   void         *value,
  #   FT_Long       value_len )
  attach_function 'Get_PS_Font_Value', 'FT_Get_PS_Font_Value',
                  [FaceRec.ptr(:in), DictKeys, :FT_UInt, :pointer, :FT_Long], :FT_Long

end