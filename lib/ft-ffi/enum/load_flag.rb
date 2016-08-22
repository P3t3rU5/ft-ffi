module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_LOAD_XXX
  LoadFlag = enum :load_flag, [
      :DEFAULT,                     0x0000,
      :NO_SCALE,                    0x0001,
      :NO_HINTING,                  0x0002,
      :RENDER,                      0x0004,
      :NO_BITMAP,                   0x0008,
      :VERTICAL_LAYOUT,             0x0010,
      :FORCE_AUTOHINT,              0x0020,
      :CROP_BITMAP,                 0x0040,
      :PEDANTIC,                    0x0080,
      :IGNORE_GLOBAL_ADVANCE_WIDTH, 0x0200,
      :NO_RECURSE,                  0x0400,
      :IGNORE_TRANSFORM,            0x0800,
      :MONOCHROME,                  0x1000,
      :LINEAR_DESIGN,               0x2000,
      :NO_AUTOHINT,                 0x8000
  ]
end