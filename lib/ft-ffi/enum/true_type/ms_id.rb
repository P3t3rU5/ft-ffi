module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_MS_ID_XXX
  MsId = enum :ms_id, [
      :SYMBOL_CS,  0,
      :UNICODE_CS, 1,
      :SJIS,       2,
      :GB2312,     3,
      :PRC,        3,
      :BIG_5,      4,
      :WANSUNG,    5,
      :JOHAB,      6,
      :UCS_4,     10,
  ]

  define_prefix(:TT_MS_ID, MsId)
end