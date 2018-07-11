module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_Header
  class TT_Header < FFIAdditions::Struct
    def Table_Version; end
    def Table_Version=(v); end
    def Font_Revision; end
    def Font_Revision=(v); end
    def CheckSum_Adjust; end
    def CheckSum_Adjust=(v); end
    def Magic_Number; end
    def Magic_Number=(v); end
    def Flags; end
    def Flags=(v); end
    def Units_Per_EM; end
    def Units_Per_EM=(v); end
    def Created; end
    def Created=(v); end
    def Modified; end
    def Modified=(v); end
    def xMin; end
    def xMin=(v); end
    def yMin; end
    def yMin=(v); end
    def xMax; end
    def xMax=(v); end
    def yMax; end
    def yMax=(v); end
    def Mac_Style; end
    def Mac_Style=(v); end
    def Lowest_Rec_PPEM; end
    def Lowest_Rec_PPEM=(v); end
    def Font_Direction; end
    def Font_Direction=(v); end
    def Index_To_Loc_Format; end
    def Index_To_Loc_Format=(v); end
    def Glyph_Data_Format; end
    def Glyph_Data_Format=(v); end

    layout Table_Version:       :FT_Fixed,
           Font_Revision:       :FT_Fixed,

           CheckSum_Adjust:     :FT_Long,
           Magic_Number:        :FT_Long,

           Flags:               :FT_UShort,
           Units_Per_EM:        :FT_UShort,

           Created:             [:FT_Long, 2],
           Modified:            [:FT_Long, 2],

           xMin:                :FT_Short,
           yMin:                :FT_Short,
           xMax:                :FT_Short,
           yMax:                :FT_Short,

           Mac_Style:           :FT_UShort,
           Lowest_Rec_PPEM:     :FT_UShort,

           Font_Direction:      :FT_Short,
           Index_To_Loc_Format: :FT_Short,
           Glyph_Data_Format:   :FT_Short
  end
end