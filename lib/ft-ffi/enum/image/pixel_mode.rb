module FT
  # Pixel Mode Enum
  # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Pixel_Mode
  PixelMode = enum FFI.find_type(:uchar), :pixel_mode, [
      :NONE,
      :MONO,
      :GRAY,
      :GRAY2,
      :GRAY4,
      :LCD,
      :LCD_V,
      :BGRA,
      :MAX
  ]

  define_prefix(:PIXEL_MODE, PixelMode)
end