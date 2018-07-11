require_relative '../struct/face_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-cid_fonts.html#FT_Get_CID_Registry_Ordering_Supplement
  def self.Get_CID_Registry_Ordering_Supplement(face, registry, ordering, supplement); end
  # FT_Error FT_Get_CID_Registry_Ordering_Supplement(
  #   FT_Face face,
  #   const char*  *registry,
  #   const char*  *ordering,
  #   FT_Int *supplement);
  ft_function 'Get_CID_Registry_Ordering_Supplement', FaceRec.ptr(:in), :pointer, :pointer, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-cid_fonts.html#FT_Get_CID_Is_Internally_CID_Keyed
  def self.Get_CID_Is_Internally_CID_Keyed(face, is_cid); end
  # FT_Error FT_Get_CID_Is_Internally_CID_Keyed( FT_Face   face, FT_Bool  *is_cid );
  ft_function 'Get_CID_Is_Internally_CID_Keyed', FaceRec.ptr(:in), :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-cid_fonts.html#FT_Get_CID_From_Glyph_Index
  def self.Get_CID_From_Glyph_Index(face, glyph_index, cid); end
  # FT_Error FT_Get_CID_From_Glyph_Index( FT_Face   face, FT_UInt   glyph_index, FT_UInt  *cid );
  ft_function 'Get_CID_From_Glyph_Index', FaceRec.ptr(:in), :FT_UInt, :pointer
end