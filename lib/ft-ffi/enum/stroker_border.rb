module FT
  StrokerBorder = enum :stroker_border, [
      :LEFT, 0,
      :RIGHT
  ]

  define_prefix(:STROKER_BORDER, StrokerBorder)
end