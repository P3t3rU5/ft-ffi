module FT
  OutlineFlag = enum :outline_flag, [
      :NONE,              0x0,
      :OWNER,             0x1,
      :EVEN_ODD_FILL,     0x2,
      :REVERSE_FILL,      0x4,
      :IGNORE_DROPOUTS,   0x8,
      :SMART_DROPOUTS,   0x10,
      :INCLUDE_STUBS,    0x20,

      :HIGH_PRECISION,  0x100,
      :SINGLE_PASS,     0x200,

  #define FT_OUTLINE_CONTOURS_MAX  SHRT_MAX
  #define FT_OUTLINE_POINTS_MAX    SHRT_MAX
  ]

  define_prefix(:OUTLINE, OutlineFlag)
end