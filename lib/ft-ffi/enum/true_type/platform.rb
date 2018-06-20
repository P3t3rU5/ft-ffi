require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_PLATFORM_XXX
  Platform = enum UShort, :platform, [
      :APPLE_UNICODE, 0,
      :MACINTOSH,     1,
      :ISO,           2,
      :MICROSOFT,     3,
      :CUSTOM,        4,
      :ADOBE,         7,
  ]

  # define_prefix(:PLATFORM, Platform)
end