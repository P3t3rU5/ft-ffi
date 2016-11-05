require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_SUBGLYPH_FLAG_XXX
  SUBGLYPH_FLAG_XXX = enum :subglyph_flag_xxx, [
      :ARGS_ARE_WORDS,          1,
      :ARGS_ARE_XY_VALUES,      2,
      :ROUND_XY_TO_GRID,        4,
      :SCALE,                   8,
      :XY_SCALE,             0x40,
      :N2X2,                 0x80,
      :USE_MY_METRICS,      0x200,
  ]

  define_prefix(:SUBGLYPH_FLAG, SUBGLYPH_FLAG_XXX)
end