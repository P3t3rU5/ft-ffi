module FT
  ModuleBitFlag = enum :module_bit_flag, [
      :FONT_DRIVER,              1,
      :RENDERER,                 2,
      :HINTER,                   4,
      :STYLER,                   8,

      :DRIVER_SCALABLE,      0x100,

      :DRIVER_NO_OUTLINES,   0x200,

      :DRIVER_HAS_HINTER,    0x400,

      :DRIVER_HINTS_LIGHTLY, 0x800,
  ]

  define_prefix(:MODULE, ModuleBitFlag)
end