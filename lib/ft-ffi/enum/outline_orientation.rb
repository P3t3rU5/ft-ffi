module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Orientation
  Orientation = enum :orientation, [
      :FILL_RIGHT,  0,
      :FILL_LEFT,   1,
      :TRUETYPE,    0,
      :POSTSCRIPT,  1,
      :NONE
  ]

  define_prefix(:ORIENTATION, Orientation)
end