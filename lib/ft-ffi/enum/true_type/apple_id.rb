module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_APPLE_ID_XXX
  AppleId = enum :apple_id, [
      :DEFAULT,          0,
      :UNICODE_1_1,      1,
      :ISO_10646,        2,
      :UNICODE_2_0,      3,
      :UNICODE_32,       4,
      :VARIANT_SELECTOR, 5,
  ]

  # define_prefix(:APPLE_ID, AppleId)
end