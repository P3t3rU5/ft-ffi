require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_STYLE_FLAG_XXX
  StyleFlag = enum :style_flag, [
      :ITALIC,  0x1,
      :BOLD,    0x2
  ]

  # define_prefix(:STYLE_FLAG, StyleFlag)
end