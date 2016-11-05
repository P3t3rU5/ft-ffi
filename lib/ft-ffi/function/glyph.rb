require 'ft-ffi/struct/glyph/glyph_slot_rec'
require 'ft-ffi/struct/matrix'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Get_SubGlyph_Info
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
end