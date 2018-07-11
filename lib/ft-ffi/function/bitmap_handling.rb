module FT
  # Bitmap Handling
  # http://www.freetype.org/freetype2/docs/reference/ft2-bitmap_handling.html

  # https://www.freetype.org/freetype2/docs/reference/ft2-bitmap_handling.html#FT_Bitmap_Init
  def self.Bitmap_Init(abitmap); end
  # void FT_Bitmap_Init( FT_Bitmap  *abitmap );
  attach_function 'Bitmap_Init', 'FT_Bitmap_Init', [Bitmap.by_ref], :void

  # Deprecated name for FT_Bitmap_Init
  def self.Bitmap_New(abitmap); end
  # void FT_Bitmap_New( FT_Bitmap  *abitmap )
  attach_function 'Bitmap_New', 'FT_Bitmap_New', [Bitmap.by_ref], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-bitmap_handling.html#FT_Bitmap_Copy
  def self.Bitmap_Copy(library, source, target); end
  # FT_Error FT_Bitmap_Copy(FT_Library library, const FT_Bitmap *source, FT_Bitmap *target)
  ft_function 'Bitmap_Copy', LibraryRec.ptr(:in), Bitmap.ptr(:in), Bitmap.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-bitmap_handling.html#FT_Bitmap_Embolden
  def self.Bitmap_Embolden(library, bitmap, xStrength, yStrength); end
  # FT_Error FT_Bitmap_Embolden(
  #     FT_Library  library,
  #     FT_Bitmap*  bitmap,
  #     FT_Pos      xStrength,
  #     FT_Pos      yStrength )
  ft_function 'Bitmap_Embolden', LibraryRec.ptr(:in), Bitmap.by_ref, :FT_Pos, :FT_Pos

  # https://www.freetype.org/freetype2/docs/reference/ft2-bitmap_handling.html#FT_Bitmap_Convert
  def self.Bitmap_Convert(library, source, target, alignment); end
  # FT_Error FT_Bitmap_Convert(
  #    FT_Library        library,
  #    const FT_Bitmap  *source,
  #    FT_Bitmap        *target,
  #    FT_Int            alignment )
  ft_function 'Bitmap_Convert', LibraryRec.ptr(:in), Bitmap.ptr(:in), Bitmap.ptr(:out), :FT_Int

  # https://www.freetype.org/freetype2/docs/reference/ft2-bitmap_handling.html#FT_Bitmap_Done
  def self.Bitmap_Done(bitmap); end
  # FT_Error FT_Bitmap_Done( FT_Library  library, FT_Bitmap  *bitmap )
  ft_function 'Bitmap_Done', LibraryRec.ptr(:in), Bitmap.ptr(:in)
end