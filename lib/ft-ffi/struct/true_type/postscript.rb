module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_Postscript
  class TT_Postscript < FFIAdditions::Struct
    def FormatType; end
    def FormatType=(v); end
    def italicAngle; end
    def italicAngle=(v); end
    def underlinePosition; end
    def underlinePosition=(v); end
    def underlineThickness; end
    def underlineThickness=(v); end
    def isFixedPitch; end
    def isFixedPitch=(v); end
    def minMemType42; end
    def minMemType42=(v); end
    def maxMemType42; end
    def maxMemType42=(v); end
    def minMemType1; end
    def minMemType1=(v); end
    def maxMemType1; end
    def maxMemType1=(v); end

    layout FormatType:         :FT_Fixed,
           italicAngle:        :FT_Fixed,
           underlinePosition:  :FT_Short,
           underlineThickness: :FT_Short,
           isFixedPitch:       :FT_ULong,
           minMemType42:       :FT_ULong,
           maxMemType42:       :FT_ULong,
           minMemType1:        :FT_ULong,
           maxMemType1:        :FT_ULong
  end
end