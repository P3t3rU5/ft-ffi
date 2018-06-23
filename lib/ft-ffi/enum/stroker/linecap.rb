module FT
  Stroker_LineCap = enum :Stroker_LineCap, [
      :BUTT, 0,
      :ROUND,
      :SQUARE
  ]

  define_prefix(:STROKER_LINECAP, Stroker_LineCap)
end