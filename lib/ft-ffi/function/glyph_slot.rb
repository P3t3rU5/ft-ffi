require_relative '../enum/render_mode'
require_relative '../struct/glyph/slot_rec'
require_relative '../struct/matrix'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_SubGlyph_Info
  def self.Get_SubGlyph_Info(glyph, sub_index, p_index, p_flags, p_arg1, p_arg2, p_transform); end
  # FT_Error FT_Get_SubGlyph_Info(
  #   FT_GlyphSlot  glyph,
  #   FT_UInt       sub_index,
  #   FT_Int       *p_index,
  #   FT_UInt      *p_flags,
  #   FT_Int       *p_arg1,
  #   FT_Int       *p_arg2,
  #   FT_Matrix    *p_transform );
  ft_function 'Get_SubGlyph_Info',
              GlyphSlotRec.ptr(:in), :FT_UInt, :pointer, :pointer, :pointer, :pointer, Matrix.ptr(:out)

  def self.GlyphSlot_Embolden(slot); end
  # void FT_GlyphSlot_Embolden( FT_GlyphSlot  slot );
  attach_function 'GlyphSlot_Embolden', 'FT_GlyphSlot_Embolden', [GlyphSlotRec.ptr], :void

  def self.GlyphSlot_Oblique(slot); end
  # void FT_GlyphSlot_Oblique( FT_GlyphSlot  slot );
  attach_function 'GlyphSlot_Oblique', 'FT_GlyphSlot_Oblique', [GlyphSlotRec.ptr], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-bitmap_handling.html#FT_GlyphSlot_Own_Bitmap
  def self.GlyphSlot_Own_Bitmap(slot); end
  # FT_GlyphSlot_Own_Bitmap( FT_GlyphSlot  slot )
  ft_function 'GlyphSlot_Own_Bitmap', GlyphSlotRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Render_Glyph
  def self.Render_Glyph(slot, render_mode); end
  # FT_Error FT_Render_Glyph( FT_GlyphSlot slot, FT_Render_Mode render_mode );
  ft_function 'Render_Glyph', GlyphSlotRec.ptr, RenderMode
end