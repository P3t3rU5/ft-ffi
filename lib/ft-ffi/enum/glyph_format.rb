require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Glyph_Format
  GlyphFormat = enum ULong, :glyph_format, [
      :NONE,      0,
      :COMPOSITE, 0x636f6d70, #'comp'
      :BITMAP,    0x62697473, #'bits'
      :OUTLINE,   0x6f75746c, #'outl'
      :PLOTTER,   0x706c6f74  #'plot'
  ]
end