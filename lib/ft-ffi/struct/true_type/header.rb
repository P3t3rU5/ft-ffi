module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_Header
  class TT_Header < FFIAdditions::Struct
    layout Table_Version:       :FT_Fixed,
           Font_Revision:       :FT_Fixed,

           CheckSum_Adjust:      :FT_Long,
           Magic_Number:         :FT_Long,

           Flags:              :FT_UShort,
           Units_Per_EM:       :FT_UShort,

           Created:         [:FT_Long, 2],
           Modified:        [:FT_Long, 2],

           xMin:                :FT_Short,
           yMin:                :FT_Short,
           xMax:                :FT_Short,
           yMax:                :FT_Short,

           Mac_Style:          :FT_UShort,
           Lowest_Rec_PPEM:    :FT_UShort,

           Font_Direction:      :FT_Short,
           Index_To_Loc_Format: :FT_Short,
           Glyph_Data_Format:   :FT_Short
  end
end