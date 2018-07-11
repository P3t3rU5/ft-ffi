require_relative '../struct/glyph/rec'
require_relative '../enum/stroker/linecap'
require_relative '../enum/stroker/linejoin'
require_relative '../enum/stroker/border'

module FT

  typedef :pointer, :FT_Stroker

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Glyph_Stroke
  def self.Glyph_Stroke(pglyph, stroker, destroy); end
  # FT_Error FT_Glyph_Stroke( FT_Glyph    *pglyph, FT_Stroker   stroker, FT_Bool      destroy );
  ft_function 'Glyph_Stroke', GlyphRec.ptr, :FT_Stroker, :FT_Bool

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Glyph_StrokeBorder
  def self.Glyph_StrokeBorder(pglyph, stroker, inside, destroy); end
  # FT_Error FT_Glyph_StrokeBorder( FT_Glyph *pglyph, FT_Stroker   stroker, FT_Bool inside, FT_Bool      destroy )
  ft_function 'Glyph_StrokeBorder', GlyphRec.ptr, :FT_Stroker, :FT_Bool, :FT_Bool

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Glyph_StrokeBorder
  def self.Outline_GetInsideBorder(outline); end
  # FT_StrokerBorder FT_Outline_GetInsideBorder( FT_Outline*  outline );
  attach_function 'Outline_GetInsideBorder', 'FT_Outline_GetInsideBorder', [Outline.ptr(:in)], :uint

  def self.Outline_GetOutsideBorder(outline); end
  # FT_StrokerBorder FT_Outline_GetOutsideBorder( FT_Outline*  outline );
  attach_function 'Outline_GetOutsideBorder', 'FT_Outline_GetOutsideBorder', [Outline.ptr(:in)], :uint

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Stroker_BeginSubPath
  def self.Stroker_BeginSubPath(stroker, to, open); end
  # FT_Error FT_Stroker_BeginSubPath( FT_Stroker stroker, FT_Vector* to, FT_Bool open );
  ft_function 'Stroker_BeginSubPath', :FT_Stroker, Vector.ptr(:in), :FT_Bool

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Stroker_ConicTo
  def self.Stroker_ConicTo(stroker, control, to); end
  # FT_Error FT_Stroker_ConicTo( FT_Stroker  stroker, FT_Vector*  control, FT_Vector*  to );
  ft_function 'Stroker_ConicTo', :FT_Stroker, Vector.ptr(:in), Vector.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Stroker_CubicTo
  def self.Stroker_CubicTo(stroker, control1, control2, to); end
  # FT_Error FT_Stroker_CubicTo( FT_Stroker  stroker, FT_Vector*  control1, FT_Vector*  control2, FT_Vector*  to );
  ft_function 'Stroker_CubicTo', :FT_Stroker, Vector.ptr(:in), Vector.ptr(:in), Vector.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Stroker_Done
  def self.Stroker_Done(stroker); end
  # void FT_Stroker_Done( FT_Stroker  stroker );
  attach_function 'Stroker_Done', 'FT_Stroker_Done', [:FT_Stroker], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Stroker_EndSubPath
  def self.Stroker_EndSubPath(stroker); end
  # FT_Error FT_Stroker_EndSubPath( FT_Stroker  stroker );
  ft_function 'Stroker_EndSubPath', :FT_Stroker

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Stroker_ExportBorder
  def self.Stroker_ExportBorder(stroker, border, outline); end
  # void FT_Stroker_ExportBorder( FT_Stroker stroker, FT_StrokerBorder border, FT_Outline* outline );
  attach_function 'Stroker_ExportBorder', 'FT_Stroker_ExportBorder',
                  [:FT_Stroker, StrokerBorder, Outline.ptr(:in)], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Stroker_Export
  def self.Stroker_Export(stroker, outline); end
  # void FT_Stroker_Export( FT_Stroker   stroker, FT_Outline*  outline );
  attach_function 'Stroker_Export', 'FT_Stroker_Export', [:FT_Stroker, Outline.ptr(:in)], :void


  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Stroker_GetBorderCounts
  def self.Stroker_GetBorderCounts(stroker, border, anum_points, anum_contours); end
  # FT_Error FT_Stroker_GetBorderCounts(
  #   FT_Stroker        stroker,
  #   FT_StrokerBorder  border,
  #   FT_UInt          *anum_points,
  #   FT_UInt          *anum_contours );
  ft_function 'Stroker_GetBorderCounts', :FT_Stroker, StrokerBorder, :pointer, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Stroker_GetCounts
  def self.Stroker_GetCounts(stroker, anum_points, anum_contours); end
  # FT_Error FT_Stroker_GetCounts( FT_Stroker stroker, FT_UInt *anum_points, FT_UInt *anum_contours );
  ft_function 'Stroker_GetCounts', :FT_Stroker, :pointer, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Stroker_LineTo
  def self.Stroker_LineTo(stroker, to); end
  # FT_Error FT_Stroker_LineTo( FT_Stroker  stroker, FT_Vector*  to );
  ft_function 'Stroker_LineTo', :FT_Stroker, Vector.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Stroker_New
  def self.Stroker_New(library, astroker); end
  # FT_Error FT_Stroker_New( FT_Library   library, FT_Stroker  *astroker );
  ft_function 'Stroker_New', LibraryRec.ptr(:in), :FT_Stroker

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Stroker_ParseOutline
  def self.Stroker_ParseOutline(stroker, outline, opened); end
  # FT_Error FT_Stroker_ParseOutline( FT_Stroker   stroker, FT_Outline*  outline, FT_Bool opened );
  ft_function 'Stroker_ParseOutline', :FT_Stroker, Outline.ptr(:in), :FT_Bool

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Stroker_Rewind
  def self.Stroker_Rewind(stroker); end
  # void FT_Stroker_Rewind( FT_Stroker  stroker );
  attach_function 'Stroker_Rewind', 'FT_Stroker_Rewind', [:FT_Stroker], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_stroker.html#FT_Stroker_Set
  def self.Stroker_Set(stroker, radius, line_cap, line_join, miter_limit); end
  # void FT_Stroker_Set(
  #   FT_Stroker           stroker,
  #   FT_Fixed             radius,
  #   FT_Stroker_LineCap   line_cap,
  #   FT_Stroker_LineJoin  line_join,
  #   FT_Fixed             miter_limit );
  attach_function 'Stroker_Set', 'FT_Stroker_Set',
                  [:FT_Stroker, :FT_Fixed, Stroker_LineCap, Stroker_LineJoin, :FT_Fixed], :void
end