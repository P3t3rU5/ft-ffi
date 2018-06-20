require_relative 'matrix'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_SubGlyph
  class SubGlyphRec < FFIAdditions::Struct
    layout index:    :FT_Int,
           flags: :FT_UShort,
           arg1:     :FT_Int,
           arg2:     :FT_Int,
           transform: Matrix
  end
end