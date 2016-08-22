require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_Postscript
  class TT_Postscript < FFIAdditions::Struct
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