require_relative '../struct/outline'
require_relative '../struct/outline_funcs'
require_relative '../struct/library_rec'
require_relative '../struct/bitmap'
require_relative '../struct/matrix'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_Check
  # FT_Error FT_Outline_Check( FT_Outline*  outline );
  ft_function 'Outline_Check', Outline.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_Copy
  # FT_Error FT_Outline_Copy( const FT_Outline*  source, FT_Outline *target );
  ft_function 'Outline_Copy', Outline.ptr(:in), Outline.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_Decompose
  # FT_Error FT_Outline_Decompose(
  #   FT_Outline*              outline,
  #   const FT_Outline_Funcs*  func_interface,
  #   void*                    user );
  ft_function 'Outline_Decompose', Outline.ptr(:in), Outline_Funcs.ptr(:in), :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_Done
  # FT_Error FT_Outline_Done( FT_Library   library, FT_Outline*  outline );
  ft_function 'Outline_Done', LibraryRec.ptr(:in), Outline.ptr(:in)

  # FT_Error FT_Outline_Done_Internal( FT_Memory    memory, FT_Outline*  outline );
  ft_function 'Outline_Done_Internal', LibraryRec.ptr(:in), Outline.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_Embolden
  # FT_Error FT_Outline_Embolden( FT_Outline*  outline, FT_Pos       strength );
  ft_function 'Outline_Embolden', Outline.ptr, :FT_Pos

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_EmboldenXY
  # FT_Error FT_Outline_EmboldenXY( FT_Outline*  outline, FT_Pos xstrength, FT_Pos ystrength );
  ft_function 'Outline_EmboldenXY', Outline.ptr(:in), :FT_Pos, :FT_Pos

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_Get_BBox
  # FT_Error FT_Outline_Get_BBox( FT_Outline*  outline, FT_BBox     *abbox );
  ft_function 'Outline_Get_BBox', Outline.ptr(:in), BBox.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_Get_Bitmap
  # FT_Error FT_Outline_Get_Bitmap( FT_Library library, FT_Outline* outline, const FT_Bitmap *abitmap );
  ft_function 'Outline_Get_Bitmap', LibraryRec.ptr(:in), Outline.ptr(:in), Bitmap.ptr

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_Get_CBox
  # void FT_Outline_Get_CBox( const FT_Outline*  outline, FT_BBox           *acbox );
  attach_function 'Outline_Get_CBox', 'FT_Outline_Get_CBox', [Outline.ptr(:in), BBox.ptr(:out)], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_Get_Orientation
  # FT_Orientation FT_Outline_Get_Orientation( FT_Outline*  outline );
  attach_function 'Outline_Get_Orientation', 'FT_Outline_Get_Orientation', [Outline.ptr(:in)], :uint

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_New
  # FT_Error FT_Outline_New(
  #   FT_Library   library,
  #   FT_UInt      numPoints,
  #   FT_Int       numContours,
  #   FT_Outline  *anoutline );
  ft_function 'Outline_New', LibraryRec.ptr(:in), :FT_UInt, :FT_Int, Outline.ptr(:out)

  # FT_Error FT_Outline_New_Internal(
  #   FT_Memory    memory,
  #   FT_UInt      numPoints,
  #   FT_Int       numContours,
  #   FT_Outline  *anoutline );
  ft_function 'Outline_New_Internal', MemoryRec.ptr(:in), :FT_UInt, :FT_Int, Outline.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_Render
  # FT_Error FT_Outline_Render( FT_Library library, FT_Outline* outline, FT_Raster_Params*  params );
  ft_function 'Outline_Render', LibraryRec.ptr(:in), Outline.ptr(:in), Raster_Params.ptr

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_Reverse
  # void FT_Outline_Reverse( FT_Outline*  outline );
  attach_function 'Outline_Reverse', 'FT_Outline_Reverse', [Outline.ptr], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_Transform
  # void FT_Outline_Transform( const FT_Outline*  outline, const FT_Matrix*   matrix );
  attach_function 'Outline_Transform', 'FT_Outline_Transform', [Outline.ptr, Matrix.ptr(:in)], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_Translate
  # void FT_Outline_Translate(
  #   const FT_Outline*  outline,
  #   FT_Pos             xOffset,
  #   FT_Pos             yOffset );
  attach_function 'Outline_Translate', 'FT_Outline_Translate', [Outline.ptr, :FT_Pos, :FT_Pos], :void
end