module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_OS2
  class TT_OS2 < FFIAdditions::Struct
    def version; end
    def version=(v); end
    def xAvgCharWidth; end
    def xAvgCharWidth=(v); end
    def usWeightClass; end
    def usWeightClass=(v); end
    def usWidthClass; end
    def usWidthClass=(v); end
    def fsType; end
    def fsType=(v); end
    def ySubscriptXSize; end
    def ySubscriptXSize=(v); end
    def ySubscriptYSize; end
    def ySubscriptYSize=(v); end
    def ySubscriptXOffset; end
    def ySubscriptXOffset=(v); end
    def ySubscriptYOffset; end
    def ySubscriptYOffset=(v); end
    def ySuperscriptXSize; end
    def ySuperscriptXSize=(v); end
    def ySuperscriptYSize; end
    def ySuperscriptYSize=(v); end
    def ySuperscriptXOffset; end
    def ySuperscriptXOffset=(v); end
    def ySuperscriptYOffset; end
    def ySuperscriptYOffset=(v); end
    def yStrikeoutSize; end
    def yStrikeoutSize=(v); end
    def yStrikeoutPosition; end
    def yStrikeoutPosition=(v); end
    def sFamilyClass; end
    def sFamilyClass=(v); end
    def panose; end
    def panose=(v); end
    def ulUnicodeRange1; end
    def ulUnicodeRange1=(v); end
    def ulUnicodeRange2; end
    def ulUnicodeRange2=(v); end
    def ulUnicodeRange3; end
    def ulUnicodeRange3=(v); end
    def ulUnicodeRange4; end
    def ulUnicodeRange4=(v); end
    def achVendID; end
    def achVendID=(v); end
    def fsSelection; end
    def fsSelection=(v); end
    def usFirstCharIndex; end
    def usFirstCharIndex=(v); end
    def usLastCharIndex; end
    def usLastCharIndex=(v); end
    def sTypoAscender; end
    def sTypoAscender=(v); end
    def sTypoDescender; end
    def sTypoDescender=(v); end
    def sTypoLineGap; end
    def sTypoLineGap=(v); end
    def usWinAscent; end
    def usWinAscent=(v); end
    def usWinDescent; end
    def usWinDescent=(v); end
    def ulCodePageRange1; end
    def ulCodePageRange1=(v); end
    def ulCodePageRange2; end
    def ulCodePageRange2=(v); end
    def sxHeight; end
    def sxHeight=(v); end
    def sCapHeight; end
    def sCapHeight=(v); end
    def usDefaultChar; end
    def usDefaultChar=(v); end
    def usBreakChar; end
    def usBreakChar=(v); end
    def usMaxContext; end
    def usMaxContext=(v); end
    def usLowerOpticalPointSize; end
    def usLowerOpticalPointSize=(v); end
    def usUpperOpticalPointSize; end
    def usUpperOpticalPointSize=(v); end

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