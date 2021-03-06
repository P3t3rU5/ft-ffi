require_relative '../enum/sfnt_tag'
require_relative '../struct/library_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#FT_Get_Sfnt_Table
  def self.Get_Sfnt_Table(face, tag); end
  # void* FT_Get_Sfnt_Table( FT_Face  face, FT_Sfnt_Tag  tag )
  attach_function 'Get_Sfnt_Table', 'FT_Get_Sfnt_Table', [FaceRec, SfntTag], :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#FT_Load_Sfnt_Table
  def self.Load_Sfnt_Table(face, tag, offset, buffer, length); end
  # FT_Error FT_Load_Sfnt_Table(
  #   FT_Face    face,
  #   FT_ULong   tag,
  #   FT_Long    offset,
  #   FT_Byte*   buffer,
  #   FT_ULong*  length)
  ft_function 'Load_Sfnt_Table', FaceRec.ptr(:in), :FT_ULong, :FT_Long, :pointer, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#FT_Sfnt_Table_Info
  def self.Sfnt_Table_Info(face, table_index, tag, length); end
  # FT_Error FT_Sfnt_Table_Info(
  #     FT_Face    face,
  #     FT_UInt    table_index,
  #     FT_ULong  *tag,
  #     FT_ULong  *length)
  ft_function 'Sfnt_Table_Info', FaceRec.ptr(:in), :FT_UInt, :pointer, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#FT_Get_CMap_Language_ID
  def self.Get_CMap_Language_ID(charmap); end
  # FT_ULong FT_Get_CMap_Language_ID( FT_CharMap  charmap );
  attach_function 'Get_CMap_Language_ID', 'FT_Get_CMap_Language_ID', [CharMapRec.ptr(:in)], :ulong

  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#FT_Get_CMap_Format
  def self.Get_CMap_Format(charmap); end
  # FT_EXPORT( FT_Long )  FT_Get_CMap_Format( FT_CharMap  charmap );
  attach_function 'Get_CMap_Format', 'FT_Get_CMap_Format', [CharMapRec.ptr(:in)], :long

  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_engine.html#FT_Get_TrueType_Engine_Type
  def self.Get_TrueType_Engine_Type(library); end
  # FT_TrueTypeEngineType FT_Get_TrueType_Engine_Type( FT_Library  library );
  attach_function 'Get_TrueType_Engine_Type', 'FT_Get_TrueType_Engine_Type', [LibraryRec.ptr(:in)], :FT_UInt
end