require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_ADOBE_ID_XXX
  AdobeId = enum :adobe_id, [
      :STANDARD, 0,
      :EXPERT,   1,
      :CUSTOM,   2,
      :LATIN_1,  3,
  ]

  # define_prefix(:ADOBE_ID, AdobeId)
end