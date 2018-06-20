module FT
  Encoding = enum :encoding, [
      :MS_SYMBOL,      0x73796d62, #'symb'
      :UNICODE,        0x756e6963, #'unic'
      :SJIS,           0x736a6973, #'sjis'
      :GB2312,         0x67622020, #'gb  '
      :BIG5,           0x62696735, #'big5'
      :WANSUNG,        0x77616e73, #'wans'
      :JOHAB,          0x6a6f6861, #'joha'
      :ADOBE_STANDARD, 0x41444f42, #'ADOB'
      :ADOBE_EXPERT,   0x41444245, #'ADBE'
      :ADOBE_CUSTOM,   0x41444243, #'ADBC'
      :ADOBE_LATIN_1,  0x6c617431, #'lat1'
      :OLD_LATIN_2,    0x6c617432, #'lat2'
      :APPLE_ROMAN,    0x61726d6e, #'armn'
  ]
end