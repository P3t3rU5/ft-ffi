module FT
  Stroker_LineJoin = enum :stroker_line_join, [
      :ROUND,          0,
      :BEVEL,          1,
      :MITER_VARIABLE, 2,
      :MITER,          2,
      :MITER_FIXED,    3
  ]

  define_prefix(:STROKER_LINEJOIN, Stroker_LineJoin)
end