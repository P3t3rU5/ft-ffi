require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_MAC_ID_XXX
  MacId = enum :mac_id, [
      :ROMAN,                0,
      :JAPANESE,             1,
      :TRADITIONAL_CHINESE,  2,
      :KOREAN,               3,
      :ARABIC,               4,
      :HEBREW,               5,
      :GREEK,                6,
      :RUSSIAN,              7,
      :RSYMBOL,              8,
      :DEVANAGARI,           9,
      :GURMUKHI,            10,
      :GUJARATI,            11,
      :ORIYA,               12,
      :BENGALI,             13,
      :TAMIL,               14,
      :TELUGU,              15,
      :KANNADA,             16,
      :MALAYALAM,           17,
      :SINHALESE,           18,
      :BURMESE,             19,
      :KHMER,               20,
      :THAI,                21,
      :LAOTIAN,             22,
      :GEORGIAN,            23,
      :ARMENIAN,            24,
      :MALDIVIAN,           25,
      :SIMPLIFIED_CHINESE,  25,
      :TIBETAN,             26,
      :MONGOLIAN,           27,
      :GEEZ,                28,
      :SLAVIC,              29,
      :VIETNAMESE,          30,
      :SINDHI,              31,
      :UNINTERP,            32,
  ]

  # define_prefix(:MAC_ID, MacId)
end