module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_ISO_ID_XXX
  IsoId = enum :iso_id, [
      :'7BIT_ASCII', 0,
      :'10646',      1,
      :'8859_1',     2,
  ]

  # define_prefix(:ISO_ID, IsoId)
end