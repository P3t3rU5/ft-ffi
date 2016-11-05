require 'ft-ffi/struct/glyph/glyph_slot_rec'
require 'ft-ffi/enum/render_mode'

module FT

  # void FT_Done_GlyphSlot( FT_GlyphSlot  slot );
  attach_function 'Done_GlyphSlot', 'FT_Done_GlyphSlot', [GlyphSlotRec.ptr(:in)], :void

  # FT_Error FT_New_GlyphSlot( FT_Face face, FT_GlyphSlot *aslot );
  ft_function 'New_GlyphSlot', FaceRec.ptr(:in), GlyphSlotRec.ptr(:out)

  # Allocate a new bitmap buffer in a glyph slot.
  # FT_Error ft_glyphslot_alloc_bitmap( FT_GlyphSlot  slot, FT_ULong size );
  attach_function 'glyphslot_alloc_bitmap', 'ft_glyphslot_alloc_bitmap', [GlyphSlotRec.ptr], :FT_Error

  # void FT_GlyphSlot_Embolden( FT_GlyphSlot  slot );
  attach_function 'GlyphSlot_Embolden', 'FT_GlyphSlot_Embolden', [GlyphSlotRec.ptr], :void

  # void ft_glyphslot_free_bitmap( FT_GlyphSlot  slot );
  attach_function 'glyphslot_free_bitmap', 'ft_glyphslot_free_bitmap', [GlyphSlotRec.ptr], :void

  # void FT_GlyphSlot_Oblique( FT_GlyphSlot  slot );
  attach_function 'GlyphSlot_Oblique', 'FT_GlyphSlot_Oblique', [GlyphSlotRec.ptr], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-bitmap_handling.html#FT_GlyphSlot_Own_Bitmap
  # FT_GlyphSlot_Own_Bitmap( FT_GlyphSlot  slot )
  ft_function 'GlyphSlot_Own_Bitmap', GlyphSlotRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Render_Glyph
  # FT_Error FT_Render_Glyph( FT_GlyphSlot slot, FT_Render_Mode render_mode );
  ft_function 'Render_Glyph', GlyphSlotRec.ptr, RenderMode

  # FT_Error FT_Render_Glyph_Internal(
  #   FT_Library      library,
  #   FT_GlyphSlot    slot,
  #   FT_Render_Mode  render_mode );
  ft_function 'Render_Glyph_Internal', LibraryRec.ptr, GlyphSlotRec.ptr, RenderMode

  # void ft_glyphslot_set_bitmap( FT_GlyphSlot  slot, FT_Byte*      buffer );
  attach_function 'glyphslot_set_bitmap', 'ft_glyphslot_set_bitmap', [GlyphSlotRec.ptr, :FT_Bytes], :void
end