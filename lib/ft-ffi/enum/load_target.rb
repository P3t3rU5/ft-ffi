module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_LOAD_TARGET_XXX
  LoadTarget = enum :load_target, [
      :NORMAL,   0x00000,
      :LIGHT,    0x10000,
      :MONO,     0x20000,
      :LCD,      0x30000,
      :LCD_V,    0x40000,
      :MODE_MAX, 0x50000
  ]

  define_prefix(:LOAD_TARGET, LoadTarget)
end