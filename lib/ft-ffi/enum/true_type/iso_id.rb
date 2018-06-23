module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_ISO_ID_XXX
  IsoId = enum :iso_id, [
      :ID_7BIT_ASCII, 0,
      :ID_10646,      1,
      :ID_8859_1,     2,
  ]

  define_prefix(:TT_ISO_ID, IsoId)
end