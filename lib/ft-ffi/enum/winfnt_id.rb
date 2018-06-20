module FT
  WinFNT_ID_XXX = enum :win_fnt_id_xxx, [
      :CP1252,    0,
      :DEFAULT,   1,
      :SYMBOL,    2,
      :MAC,      77,
      :CP932,   128,
      :CP949,   129,
      :CP1361,  130,
      :CP936,   134,
      :CP950,   136,
      :CP1253,  161,
      :CP1254,  162,
      :CP1258,  163,
      :CP1255,  177,
      :CP1256,  178,
      :CP1257,  186,
      :CP1251,  204,
      :CP874,   222,
      :CP1250,  238,
      :OEM,     255,
  ]

  define_prefix(:WinFNT_ID, WinFNT_ID_XXX)
end