require 'ft-ffi/struct/glyph/glyph_slot_rec'
require 'ft-ffi/enum/render_mode'

module FT
  # void FT_GlyphSlot_Embolden( FT_GlyphSlot  slot );
  attach_function 'GlyphSlot_Embolden', 'FT_GlyphSlot_Embolden', [GlyphSlotRec.ptr], :void

  # void FT_GlyphSlot_Oblique( FT_GlyphSlot  slot );
  attach_function 'GlyphSlot_Oblique', 'FT_GlyphSlot_Oblique', [GlyphSlotRec.ptr], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-bitmap_handling.html#FT_GlyphSlot_Own_Bitmap
  # FT_GlyphSlot_Own_Bitmap( FT_GlyphSlot  slot )
  ft_function 'GlyphSlot_Own_Bitmap', GlyphSlotRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Render_Glyph
  # FT_Error FT_Render_Glyph( FT_GlyphSlot slot, FT_Render_Mode render_mode );
  ft_function 'Render_Glyph', GlyphSlotRec.ptr, RenderMode
end