require_relative '../enum/kerning_mode'
require_relative '../enum/load_flag'
require_relative '../enum/encoding'
require_relative '../struct/open_args'
require_relative '../struct/face_rec'
require_relative '../struct/library_rec'
require_relative '../struct/sfnt/name'
require_relative '../struct/size/request_rec'
require_relative '../struct/bdf/property_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Attach_File
  def self.Attach_File(face, filepathname); end
  # FT_Error FT_Attach_File(FT_Face face, const char* filepathname )
  ft_function 'Attach_File', FaceRec.ptr, :string

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Attach_Stream
  def self.Attach_Stream(face, parameters); end
  # FT_Error FT_Attach_Stream(FT_Face face, FT_Open_Args*  parameters )
  ft_function 'Attach_Stream', FaceRec.ptr, Open_Args.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Done_Face
  def self.Done_Face(face); end
  # FT_Error FT_Done_Face(FT_Face face)
  ft_function 'Done_Face', FaceRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Reference_Face
  def self.Reference_Face(face); end
  # FT_Error FT_Reference_Face( FT_Face  face );
  ft_function 'Reference_Face',  FaceRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_New_Memory_Face
  def self.New_Memory_Face(library, file_base, file_size, face_index, aface); end
  # FT_Error FT_New_Memory_Face(
  #          FT_Library     library,
  #          const FT_Byte* file_base,
  #          FT_Long        file_size,
  #          FT_Long        face_index,
  #          FT_Face*       aface)
  ft_function 'New_Memory_Face', LibraryRec.ptr, :pointer, :FT_Long, :FT_Long, FaceRec.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Open_Face
  def self.Open_Face(library, args, face_index, aface); end
  # FT_Error FT_Open_Face( FT_Library library, const FT_Open_Args* args, FT_Long face_index, FT_Face *aface );
  ft_function 'Open_Face', LibraryRec.ptr, Open_Args.ptr(:in), :FT_Long, FaceRec.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_New_Face
  def self.New_Face(library, filepathname, face_index, aface); end
  # FT_Error FT_New_Face(
  #    FT_Library  library,
  #    const char* filepathname,
  #    FT_Long     face_index,
  #    FT_Face*    aface)
  # ft_function 'New_Face', LibraryRec.ptr, :string, :FT_Long, FaceRec.ptr(:out)
  ft_function 'New_Face', LibraryRec.ptr, :string, :FT_Long, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Face_Properties
  def self.Face_Properties(face, num_properties, properties); end
  # FT_Error FT_Face_Properties( FT_Face face, FT_UInt num_properties, FT_Parameter* properties );
  ft_function 'Face_Properties', FaceRec.ptr(:in), :FT_UInt, :pointer

  # TODO
  ADVANCE_FLAG_FAST_ONLY = 0x20000000

  # https://www.freetype.org/freetype2/docs/reference/ft2-quick_advance.html#FT_Get_Advance
  def self.Get_Advance(face, gindex, load_flags, padvance); end
  # FT_EXPORT( FT_Error ) FT_Get_Advance( FT_Face face, FT_UInt gindex, FT_Int32 load_flags, FT_Fixed *padvance );
  ft_function 'Get_Advance', FaceRec.ptr(:in), :FT_UInt, :FT_Int32, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-quick_advance.html#FT_Get_Advances
  def self.Get_Advances(face, start, count, load_flags, padvances); end
  # FT_EXPORT( FT_Error ) FT_Get_Advances( FT_Face face, FT_UInt start, FT_UInt count, FT_Int32 load_flags, FT_Fixed *padvances );
  ft_function 'Get_Advances', FaceRec.ptr(:in), :FT_UInt, :FT_UInt, :FT_Int32, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Char_Index
  def self.Get_Char_Index(face, charcode); end
  # FT_EXPORT( FT_UInt ) FT_Get_Char_Index( FT_Face   face, FT_ULong  charcode );
  attach_function 'Get_Char_Index', 'FT_Get_Char_Index', [FaceRec.ptr(:in), :FT_ULong], :FT_UInt

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Char_Index
  def self.Get_First_Char(face, agindex); end
  # FT_ULong FT_Get_First_Char( FT_Face  face, FT_UInt* agindex)
  attach_function 'Get_First_Char', 'FT_Get_First_Char', [FaceRec.ptr(:in), :pointer], :FT_ULong

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_FSType_Flags
  def self.Get_FSType_Flags(face); end
  # FT_UShort FT_Get_FSType_Flags( FT_Face  face )
  attach_function 'Get_FSType_Flags', 'FT_Get_FSType_Flags', [FaceRec.ptr(:in)], :FT_UShort

  # https://www.freetype.org/freetype2/docs/reference/ft2-gasp_table.html#FT_Get_Gasp
  def self.Get_Gasp(face, ppem); end
  # FT_Int FT_Get_Gasp( FT_Face face, FT_UInt ppem )
  attach_function 'Get_Gasp', 'FT_Get_Gasp', [FaceRec.ptr(:in), :FT_UInt], :FT_Int


  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Glyph_Name
  def self.Get_Glyph_Name(face, glyph_index, buffer, buffer_max); end
  # FT_Error FT_Get_Glyph_Name( FT_Face face, FT_UInt glyph_index, FT_Pointer  buffer, FT_UInt buffer_max );
  ft_function 'Get_Glyph_Name', FaceRec.ptr(:in), :FT_UInt, :string, :FT_UInt

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Kerning
  def self.Get_Kerning(face, left_glyph, right_glyph, kern_mode, akerning); end
  # FT_Error FT_Get_Kerning(
  #     FT_Face    face,
  #     FT_UInt    left_glyph,
  #     FT_UInt    right_glyph,
  #     FT_UInt    kern_mode,
  #     FT_Vector* akerning)
  ft_function 'Get_Kerning', FaceRec.ptr(:in), :FT_UInt, :FT_UInt, KerningMode, Vector.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Next_Char
  def self.Get_Next_Char(face, char_code, agindex); end
  # FT_ULong FT_Get_Next_Char( FT_Face  face, FT_ULong char_code, FT_UInt* agindex)
  attach_function 'Get_Next_Char', 'FT_Get_Next_Char', [FaceRec.ptr(:in), :FT_ULong, :pointer], :FT_ULong

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Name_Index
  def self.Get_Name_Index(face, glyph_name); end
  # FT_UInt FT_Get_Name_Index( FT_Face face, FT_String*  glyph_name );
  attach_function 'Get_Name_Index', 'FT_Get_Name_Index', [FaceRec.ptr, :string], :FT_UInt

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Postscript_Name
  def self.Get_Postscript_Name(face); end
  # const char* FT_Get_Postscript_Name( FT_Face  face );
  attach_function 'Get_Postscript_Name', 'FT_Get_Postscript_Name', [FaceRec.ptr(:in)], :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Load_Char
  def self.Load_Char(face, char_code, load_flags); end
  # FT_Error FT_Load_Char(FT_Face  face, FT_ULong char_code, FT_Int32 load_flags)
  ft_function 'Load_Char', FaceRec.ptr(:in), :FT_ULong, LoadFlag

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Load_Glyph
  def self.Load_Glyph(face, glyph_index, load_flags); end
  # FT_Error FT_Load_Glyph(FT_Face  face, FT_UInt  glyph_index, FT_Int32 load_flags)
  ft_function 'Load_Glyph', FaceRec.ptr(:in), :FT_UInt, LoadFlag

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Set_Char_Size
  def self.Set_Char_Size(face, char_width, char_height, horz_resolution, vert_resolution); end
  # FT_Error FT_Set_Char_Size(
  #    FT_Face    face,
  #    FT_F26Dot6 char_width,
  #    FT_F26Dot6 char_height,
  #    FT_UInt    horz_resolution,
  #    FT_UInt    vert_resolution)
  ft_function 'Set_Char_Size', FaceRec.ptr, :FT_F26Dot6, :FT_F26Dot6, :FT_UInt, :FT_UInt

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Set_Pixel_Sizes
  def self.Set_Pixel_Sizes(face, pixel_width, pixel_height); end
  # FT_Error FT_Set_Pixel_Sizes(FT_Face face, FT_UInt pixel_width, FT_UInt pixel_height)
  ft_function 'Set_Pixel_Sizes', FaceRec.ptr, :FT_UInt, :FT_UInt

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Track_Kerning
  def self.Get_Track_Kerning(face, point_size, degree, akerning); end
  # FT_Error FT_Get_Track_Kerning(
  #   FT_Face    face,
  #   FT_Fixed   point_size,
  #   FT_Int     degree,
  #   FT_Fixed*  akerning )
  ft_function 'Get_Track_Kerning', FaceRec.ptr(:in), :FT_Fixed, :FT_Int, :pointer

  # Glyph Variants
  # http://www.freetype.org/freetype2/docs/reference/ft2-glyph_variants.html

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_variants.html#FT_Face_GetCharVariantIndex
  def self.Face_GetCharVariantIndex(face, charcode, variantSelector); end
  # FT_UINT FT_Face_GetCharVariantIndex( FT_Face face, FT_ULong  charcode, FT_ULong  variantSelector );
  attach_function 'Face_GetCharVariantIndex',
                  'FT_Face_GetCharVariantIndex', [FaceRec.ptr(:in), :FT_ULong, :FT_ULong], :FT_UInt

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_variants.html#FT_Face_GetCharVariantIsDefault
  def self.Face_GetCharVariantIsDefault(face, charcode, variantSelector); end
  # FT_Int FT_Face_GetCharVariantIsDefault( FT_Face face, FT_ULong charcode, FT_ULong variantSelector );
  attach_function 'Face_GetCharVariantIsDefault',
                  'FT_Face_GetCharVariantIsDefault', [FaceRec.ptr(:in), :FT_ULong, :FT_ULong], :FT_Int

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_variants.html#FT_Face_GetVariantSelectors
  def self.Face_GetVariantSelectors(face); end
  # FT_UInt32* FT_Face_GetVariantSelectors( FT_Face  face );
  attach_function 'Face_GetVariantSelectors', 'FT_Face_GetVariantSelectors', [FaceRec.ptr(:in)], :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_variants.html#FT_Face_GetVariantsOfChar
  def self.Face_GetVariantsOfChar(face, charcode); end
  # FT_UInt32* FT_Face_GetVariantsOfChar( FT_Face face, FT_ULong charcode );
  attach_function 'Face_GetVariantsOfChar', 'FT_Face_GetVariantsOfChar', [FaceRec.ptr(:in), :FT_ULong], :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_variants.html#FT_Face_GetCharsOfVariant
  def self.Face_GetCharsOfVariant(face, variantSelector); end
  # FT_ERROR FT_Face_GetCharsOfVariant( FT_Face   face, FT_ULong  variantSelector );
  ft_function 'Face_GetCharsOfVariant', FaceRec.ptr(:in), :FT_ULong

  # Charmap
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Select_Charmap
  def self.Select_Charmap(face, encoding); end
  # FT_Error FT_Select_Charmap( FT_Face face, FT_Encoding  encoding )
  ft_function 'Select_Charmap', FaceRec.ptr, Encoding

  # BDF
  # https://www.freetype.org/freetype2/docs/reference/ft2-bdf_fonts.html#FT_Get_BDF_Charset_ID
  def self.Get_BDF_Charset_ID(face, acharset_encoding, acharset_registry); end
  # FT_Error FT_Get_BDF_Charset_ID( FT_Face face, const char*  *acharset_encoding, const char*  *acharset_registry )
  ft_function 'Get_BDF_Charset_ID', FaceRec.ptr(:in), :string, :string

  # https://www.freetype.org/freetype2/docs/reference/ft2-bdf_fonts.html#FT_Get_BDF_Property
  def self.Get_BDF_Property(face, prop_name, aproperty); end
  # FT_Error FT_Get_BDF_Property( FT_Face face, const char* prop_name, BDF_PropertyRec  *aproperty )
  ft_function 'Get_BDF_Property', FaceRec.ptr(:in), :string, PropertyRec.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Request_Size
  def self.Request_Size(face, req); end
  # FT_Error FT_Request_Size( FT_Face face, FT_Size_Request req );
  ft_function 'Request_Size', FaceRec.ptr, Size_RequestRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Select_Size
  def self.Select_Size(face, strike_index); end
  # FT_Error FT_Select_Size( FT_Face  face, FT_Int   strike_index );
  ft_function 'Select_Size', FaceRec.ptr, :FT_Int

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Set_Charmap
  def self.Set_Charmap(face, charmap); end
  # FT_Error FT_Set_Charmap( FT_Face face, FT_CharMap charmap );
  ft_function 'Set_Charmap', FaceRec.ptr, CharMapRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Set_Transform
  def self.Set_Transform(face, matrix, delta); end
  # void FT_Set_Transform( FT_Face face, FT_Matrix*  matrix, FT_Vector*  delta );
  attach_function 'Set_Transform', 'FT_Set_Transform', [FaceRec.ptr, Matrix.ptr(:in), Vector.ptr(:in)], :void
end