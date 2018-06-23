module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_OS2
  class TT_OS2 < FFIAdditions::Struct
    layout version:                 :FT_UShort,
           xAvgCharWidth:           :FT_Short,
           usWeightClass:           :FT_UShort,
           usWidthClass:            :FT_UShort,
           fsType:                  :FT_UShort,
           ySubscriptXSize:         :FT_Short,
           ySubscriptYSize:         :FT_Short,
           ySubscriptXOffset:       :FT_Short,
           ySubscriptYOffset:       :FT_Short,
           ySuperscriptXSize:       :FT_Short,
           ySuperscriptYSize:       :FT_Short,
           ySuperscriptXOffset:     :FT_Short,
           ySuperscriptYOffset:     :FT_Short,
           yStrikeoutSize:          :FT_Short,
           yStrikeoutPosition:      :FT_Short,
           sFamilyClass:            :FT_Short,

           panose:                  [:FT_Byte, 10],

           ulUnicodeRange1:         :FT_ULong,
           ulUnicodeRange2:         :FT_ULong,
           ulUnicodeRange3:         :FT_ULong,
           ulUnicodeRange4:         :FT_ULong,

           achVendID:               [:FT_Char, 4],

           fsSelection:             :FT_UShort,
           usFirstCharIndex:        :FT_UShort,
           usLastCharIndex:         :FT_UShort,
           sTypoAscender:           :FT_Short,
           sTypoDescender:          :FT_Short,
           sTypoLineGap:            :FT_Short,
           usWinAscent:             :FT_UShort,
           usWinDescent:            :FT_UShort,

           ulCodePageRange1:        :FT_ULong,
           ulCodePageRange2:        :FT_ULong,

           sxHeight:                :FT_Short,
           sCapHeight:              :FT_Short,
           usDefaultChar:           :FT_UShort,
           usBreakChar:             :FT_UShort,
           usMaxContext:            :FT_UShort,

           usLowerOpticalPointSize: :FT_UShort,
           usUpperOpticalPointSize: :FT_UShort
  end
end