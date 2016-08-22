require 'ft-ffi/enum/kerning_mode'
require 'ft-ffi/enum/load_flag'
require 'ft-ffi/enum/encoding'

require 'ft-ffi/struct/open_args'
require 'ft-ffi/struct/face_rec'
require 'ft-ffi/struct/library_rec'
require 'ft-ffi/struct/sfnt_name'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Attach_File
  # FT_EXPORT( FT_Error ) FT_Attach_File(FT_Face face, const char* filepathname )
  ft_function 'Attach_File', FaceRec.ptr, :string

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Attach_Stream
  # FT_EXPORT( FT_Error ) FT_Attach_Stream(FT_Face face, FT_Open_Args*  parameters )
  ft_function 'Attach_Stream', FaceRec.ptr, Open_Args.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Done_Face
  # FT_Error FT_Done_Face(FT_Face face)
  ft_function 'Done_Face', FaceRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Reference_Face
  # FT_Error FT_Reference_Face( FT_Face  face );
  ft_function 'Reference_Face',  FaceRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_New_Memory_Face
  # FT_Error FT_New_Memory_Face(
  #          FT_Library     library,
  #          const FT_Byte* file_base,
  #          FT_Long        file_size,
  #          FT_Long        face_index,
  #          FT_Face*       aface)
  ft_function 'New_Memory_Face', LibraryRec.ptr, :pointer, :FT_Long, :FT_Long, FaceRec.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Open_Face
  # FT_EXPORT( FT_Error ) FT_Open_Face( FT_Library library, const FT_Open_Args* args, FT_Long face_index, FT_Face *aface );
  ft_function 'Open_Face', LibraryRec.ptr, Open_Args.ptr(:in), :FT_Long, FaceRec.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_New_Face
  # FT_Error FT_New_Face(
  #    FT_Library  library,
  #    const char* filepathname,
  #    FT_Long     face_index,
  #    FT_Face*    aface)
  ft_function 'New_Face', LibraryRec.ptr, :string, :FT_Long, FaceRec.ptr(:out)

  ADVANCE_FLAG_FAST_ONLY = 0x20000000

  # https://www.freetype.org/freetype2/docs/reference/ft2-quick_advance.html#FT_Get_Advance
  # FT_EXPORT( FT_Error ) FT_Get_Advance( FT_Face face, FT_UInt gindex, FT_Int32 load_flags, FT_Fixed *padvance );
  ft_function 'Get_Advance', FaceRec.ptr(:in), :FT_UInt, :FT_Int32, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-quick_advance.html#FT_Get_Advances
  # FT_EXPORT( FT_Error ) FT_Get_Advances( FT_Face face, FT_UInt start, FT_UInt count, FT_Int32 load_flags, FT_Fixed *padvances );
  ft_function 'Get_Advances', FaceRec.ptr(:in), :FT_UInt, :FT_UInt, :FT_Int32, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Char_Index
  # FT_EXPORT( FT_UInt ) FT_Get_Char_Index( FT_Face   face, FT_ULong  charcode );
  attach_function 'Get_Char_Index', 'FT_Get_Char_Index', [FaceRec.ptr(:in), :FT_ULong], :FT_UInt

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Char_Index
  # FT_ULong FT_Get_First_Char(
  #     FT_Face  face,
  #     FT_UInt* agindex)
  attach_function 'Get_First_Char', 'FT_Get_First_Char', [FaceRec.ptr(:in), :pointer], :FT_ULong

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_FSType_Flags
  # FT_UShort FT_Get_FSType_Flags( FT_Face  face )
  attach_function 'Get_FSType_Flags', 'FT_Get_FSType_Flags', [FaceRec.ptr(:in)], :FT_UShort

  # https://www.freetype.org/freetype2/docs/reference/ft2-gasp_table.html#FT_Get_Gasp
  # FT_Int FT_Get_Gasp( FT_Face face, FT_UInt ppem )
  attach_function 'Get_Gasp', 'FT_Get_Gasp', [FaceRec.ptr(:in), :FT_UInt], :FT_Int


  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Glyph_Name
  # FT_Error FT_Get_Glyph_Name( FT_Face face, FT_UInt glyph_index, FT_Pointer  buffer, FT_UInt buffer_max );
  ft_function 'Get_Glyph_Name', FaceRec.ptr(:in), :FT_UInt, :string, :FT_UInt

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Kerning
  # FT_Error FT_Get_Kerning(
  #     FT_Face    face,
  #     FT_UInt    left_glyph,
  #     FT_UInt    right_glyph,
  #     FT_UInt    kern_mode,
  #     FT_Vector* akerning)
  ft_function 'Get_Kerning', FaceRec.ptr(:in), :FT_UInt, :FT_UInt, KerningMode, Vector.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_Next_Char
  # FT_ULong FT_Get_Next_Char(
  #     FT_Face  face,
  #     FT_ULong char_code,
  #     FT_UInt* agindex)
  attach_function 'Get_Next_Char', 'FT_Get_Next_Char', [FaceRec.ptr(:in), :FT_ULong, :pointer], :FT_ULong

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Load_Char
  # FT_Error FT_Load_Char(
  #          FT_Face  face,
  #          FT_ULong char_code,
  #          FT_Int32 load_flags)
  ft_function 'Load_Char', FaceRec.ptr(:in), :FT_ULong, LoadFlag

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Load_Glyph
  # FT_Error FT_Load_Glyph(
  #         FT_Face  face,
  #         FT_UInt  glyph_index,
  #         FT_Int32 load_flags)
  ft_function 'Load_Glyph', FaceRec.ptr(:in), :FT_UInt, LoadFlag

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Set_Char_Size
  # FT_Error FT_Set_Char_Size(
  #    FT_Face    face,
  #    FT_F26Dot6 char_width,
  #    FT_F26Dot6 char_height,
  #    FT_UInt    horz_resolution,
  #    FT_UInt    vert_resolution)
  ft_function 'Set_Char_Size', FaceRec.ptr, :FT_F26Dot6, :FT_F26Dot6, :FT_UInt, :FT_UInt

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Set_Pixel_Sizes
  # FT_Error FT_Set_Pixel_Sizes(
  #          FT_Face face,
  #          FT_UInt pixel_width,
  #          FT_UInt pixel_height)
  ft_function 'Set_Pixel_Sizes', FaceRec.ptr, :FT_UInt, :FT_UInt

  # Glyph Variants
  # http://www.freetype.org/freetype2/docs/reference/ft2-glyph_variants.html

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_variants.html#FT_Face_GetCharVariantIndex
  # FT_UINT FT_Face_GetCharVariantIndex( FT_Face face, FT_ULong  charcode, FT_ULong  variantSelector );
  attach_function 'Face_GetCharVariantIndex',
                  'FT_Face_GetCharVariantIndex', [FaceRec.ptr(:in), :FT_ULong, :FT_ULong], :FT_UInt

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_variants.html#FT_Face_GetCharVariantIsDefault
  # FT_Int FT_Face_GetCharVariantIsDefault( FT_Face face, FT_ULong charcode, FT_ULong variantSelector );
  attach_function 'Face_GetCharVariantIsDefault',
                  'FT_Face_GetCharVariantIsDefault', [FaceRec.ptr(:in), :FT_ULong, :FT_ULong], :FT_Int

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_variants.html#FT_Face_GetVariantSelectors
  # FT_EXPORT( FT_UInt32* ) FT_Face_GetVariantSelectors( FT_Face  face );
  attach_function 'Face_GetVariantSelectors', 'FT_Face_GetVariantSelectors', [FaceRec.ptr(:in)], :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_variants.html#FT_Face_GetVariantsOfChar
  # FT_EXPORT( FT_UInt32* ) FT_Face_GetVariantsOfChar( FT_Face face, FT_ULong charcode );
  attach_function 'Face_GetVariantsOfChar', 'FT_Face_GetVariantsOfChar', [FaceRec.ptr(:in), :FT_ULong], :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_variants.html#FT_Face_GetCharsOfVariant
  # FT_ERROR FT_Face_GetCharsOfVariant( FT_Face   face, FT_ULong  variantSelector );
  ft_function 'Face_GetCharsOfVariant', FaceRec.ptr(:in), :FT_ULong

  # Charmap
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Select_Charmap
  # FT_Error FT_Select_Charmap( FT_Face face, FT_Encoding  encoding )
  ft_function 'Select_Charmap', FaceRec.ptr, Encoding

  # SfntName
  # https://www.freetype.org/freetype2/docs/reference/ft2-sfnt_names.html#FT_Get_Sfnt_Name_Count
  # FT_UInt FT_Get_Sfnt_Name_Count( FT_Face  face )
  attach_function 'Get_Sfnt_Name_Count', 'FT_Get_Sfnt_Name_Count', [FaceRec.ptr(:in)], :FT_UInt

  # https://www.freetype.org/freetype2/docs/reference/ft2-sfnt_names.html#FT_Get_Sfnt_Name
  # FT_Error FT_Get_Sfnt_Name( FT_Face face, FT_UInt idx, FT_SfntName  *aname )
  ft_function 'Get_Sfnt_Name', FaceRec.ptr(:in), :FT_UInt, SfntName

  # https://www.freetype.org/freetype2/docs/reference/ft2-sfnt_names.html#FT_PARAM_TAG_IGNORE_PREFERRED_FAMILY
  #define FT_PARAM_TAG_IGNORE_PREFERRED_FAMILY  FT_MAKE_TAG( 'i', 'g', 'p', 'f' )

  # https://www.freetype.org/freetype2/docs/reference/ft2-sfnt_names.html#FT_PARAM_TAG_IGNORE_PREFERRED_SUBFAMILY
  #define FT_PARAM_TAG_IGNORE_PREFERRED_SUBFAMILY  FT_MAKE_TAG( 'i', 'g', 'p', 's' )

  # BDF
  # https://www.freetype.org/freetype2/docs/reference/ft2-bdf_fonts.html#FT_Get_BDF_Charset_ID
  # FT_Error FT_Get_BDF_Charset_ID( FT_Face face, const char*  *acharset_encoding, const char*  *acharset_registry )
  # ft_function 'Get_BDF_Charset_ID', FaceRec.ptr(:in), :string, :string

  # https://www.freetype.org/freetype2/docs/reference/ft2-bdf_fonts.html#FT_Get_BDF_Property
  # FT_Error FT_Get_BDF_Property( FT_Face face, const char* prop_name, BDF_PropertyRec  *aproperty )
  # ft_function 'Get_BDF_Property', FaceRec.ptr(:in), :string, PropertyRec.ptr(:out)
end