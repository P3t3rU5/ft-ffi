module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_LOAD_XXX
  LoadFlag = enum :load_flag, [
    :DEFAULT,                     0x000000,
    :NO_SCALE,                    0x000001,
    :NO_HINTING,                  0x000002,
    :RENDER,                      0x000004,
    :NO_BITMAP,                   0x000008,
    :VERTICAL_LAYOUT,             0x000010,
    :FORCE_AUTOHINT,              0x000020,
    :CROP_BITMAP,                 0x000040,
    :PEDANTIC,                    0x000080,
    :IGNORE_GLOBAL_ADVANCE_WIDTH, 0x000200,
    :NO_RECURSE,                  0x000400,
    :IGNORE_TRANSFORM,            0x000800,
    :MONOCHROME,                  0x001000,
    :LINEAR_DESIGN,               0x002000,
    :NO_AUTOHINT,                 0x008000,

    :COLOR,                       0x100000,
    :COMPUTE_METRICS,             0x200000,
    :BITMAP_METRICS_ONLY,         0x400000,

    :ADVANCE_ONLY,                0x000100,
    :SBITS_ONLY,                  0x004000
  ]

  define_prefix(:LOAD, LoadFlag)
end