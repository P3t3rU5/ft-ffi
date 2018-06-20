module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_VertHeader
  class TT_VertHeader < FFIAdditions::Struct
    layout  Version:                 :FT_Fixed,
            Ascender:                :FT_Short,
            Descender:               :FT_Short,
            Line_Gap:                :FT_Short,

            advance_Height_Max:     :FT_UShort,

            min_Top_Side_Bearing:    :FT_Short,
            min_Bottom_Side_Bearing: :FT_Short,
            xMax_Extent:             :FT_Short,
            caret_Slope_Rise:        :FT_Short,
            caret_Slope_Run:         :FT_Short,
            caret_Offset:            :FT_Short,

            Reserved:           [:FT_Short, 4],

            metric_Data_Format:      :FT_Short,
            number_Of_HMetrics:     :FT_UShort,

            long_metrics:             :pointer,
            short_metrics:            :pointer
  end
end