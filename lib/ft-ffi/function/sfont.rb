require_relative '../struct/face_rec'
require_relative '../struct/sfnt/name'
require_relative '../struct/sfnt/lang_tag'

module FT
  # SfntName
  # https://www.freetype.org/freetype2/docs/reference/ft2-sfnt_names.html#FT_Get_Sfnt_Name_Count
  def self.Get_Sfnt_Name_Count(face); end
  # FT_UInt FT_Get_Sfnt_Name_Count( FT_Face  face )
  attach_function 'Get_Sfnt_Name_Count', 'FT_Get_Sfnt_Name_Count', [FaceRec.ptr(:in)], :FT_UInt

  # https://www.freetype.org/freetype2/docs/reference/ft2-sfnt_names.html#FT_Get_Sfnt_Name
  def self.Get_Sfnt_Name(face, idx, aname); end
  # FT_Error FT_Get_Sfnt_Name( FT_Face face, FT_UInt idx, FT_SfntName  *aname )
  ft_function 'Get_Sfnt_Name', FaceRec.ptr(:in), :FT_UInt, SfntName

  # https://www.freetype.org/freetype2/docs/reference/ft2-sfnt_names.html#FT_Get_Sfnt_LangTag
  def self.Get_Sfnt_LangTag(face, langID, alangTag); end
  # FT_Error FT_Get_Sfnt_LangTag( FT_Face face, FT_UInt langID, FT_SfntLangTag *alangTag );
  ft_function 'Get_Sfnt_LangTag', FaceRec.ptr(:in), :FT_UInt, SfntLangTag.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-sfnt_names.html#FT_PARAM_TAG_IGNORE_PREFERRED_FAMILY
  #define FT_PARAM_TAG_IGNORE_PREFERRED_FAMILY  FT_MAKE_TAG( 'i', 'g', 'p', 'f' )

  # https://www.freetype.org/freetype2/docs/reference/ft2-sfnt_names.html#FT_PARAM_TAG_IGNORE_PREFERRED_SUBFAMILY
  #define FT_PARAM_TAG_IGNORE_PREFERRED_SUBFAMILY  FT_MAKE_TAG( 'i', 'g', 'p', 's' )
end