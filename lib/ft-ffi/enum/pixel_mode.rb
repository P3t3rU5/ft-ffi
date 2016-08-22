require 'ft-ffi'

module FT
  # Pixel Mode Enum
  # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Pixel_Mode
  PixelMode = enum :pixel_mode, [
      :PIXEL_MODE_NONE,
      :PIXEL_MODE_MONO,
      :PIXEL_MODE_GRAY,
      :PIXEL_MODE_GRAY2,
      :PIXEL_MODE_GRAY4,
      :PIXEL_MODE_LCD,
      :PIXEL_MODE_LCD_V,
      :PIXEL_MODE_BGRA,
      :PIXEL_MODE_MAX
  ]
end