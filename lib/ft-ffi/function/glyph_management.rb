require 'ft-ffi/enum/glyph_bbox_mode'
require 'ft-ffi/enum/render_mode'

require 'ft-ffi/struct/glyph/glyph_rec'
require 'ft-ffi/struct/glyph/glyph_slot_rec'
require 'ft-ffi/struct/vector'
require 'ft-ffi/struct/matrix'

module FT
  # Glyph Management
  # http://www.freetype.org/freetype2/docs/reference/ft2-glyph_management.html

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_management.html#FT_Done_Glyph
  # void FT_Done_Glyph(FT_Glyph glyph)
  attach_function 'Done_Glyph', 'FT_Done_Glyph', [GlyphRec.ptr], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_management.html#FT_Get_Glyph
  # FT_Error FT_Get_Glyph(FT_GlyphSlot slot, FT_Glyph* aglyph)
  ft_function 'Get_Glyph', GlyphSlotRec.ptr(:in), GlyphRec.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_management.html#FT_Glyph_Get_CBox
  # void FT_Glyph_Get_CBox( FT_Glyph glyph, FT_UInt bbox_mode, FT_BBox *acbox );
  attach_function 'Glyph_Get_CBox', 'FT_Glyph_Get_CBox', [GlyphRec.ptr(:in), GlyphBBoxMode, BBox.ptr(:out)], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_management.html#FT_Glyph_Copy
  # FT_Error FT_Glyph_Copy( FT_Glyph source, FT_Glyph *target );
  ft_function 'Glyph_Copy', GlyphRec.ptr(:in), GlyphRec.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_management.html#FT_Glyph_Transform
  # FT_Error FT_Glyph_Transform( FT_Glyph glyph, FT_Matrix*  matrix, FT_Vector*  delta );
  ft_function 'Glyph_Transform', GlyphRec.ptr, Matrix.ptr(:in), Vector.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_management.html#FT_Glyph_To_Bitmap
  # FT_Error FT_Glyph_To_Bitmap(
  #    FT_Glyph*      the_glyph,
  #    FT_Render_Mode render_mode,
  #    FT_Vector*     origin,
  #    FT_Bool        destroy)
  ft_function 'Glyph_To_Bitmap', GlyphRec.ptr, RenderMode, Vector.ptr(:in), :bool
end