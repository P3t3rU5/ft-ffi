module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-gasp_table.html#FT_GASP_XXX
  GaspTable = enum :gasp_table, [
      :NO_TABLE,               -1,
      :DO_GRIDFIT,           0x01,
      :DO_GRAY,              0x02,
      :SYMMETRIC_SMOOTHING,  0x08,
      :SYMMETRIC_GRIDFIT,    0x10,
  ]

  # define_prefix(:GASP, GaspTable)
end