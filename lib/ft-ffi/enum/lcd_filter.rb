require 'ft-ffi'

module FT
  # http://freetype.sourceforge.net/freetype2/docs/reference/ft2-lcd_filtering.html#FT_LcdFilter
  LcdFilter = enum :lcd_filter, [
      :NONE,    0,
      :DEFAULT, 1,
      :LIGHT,   2,
      :LEGACY1, 3,
      :LEGACY, 16,
  ]

  # LCD_FILTER_MAX

  define_prefix(:LCD_FILTER, LcdFilter)
end