module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#TT_VertHeader
  class TT_VertHeader < FFIAdditions::Struct
    def Version; end
    def Version=(v); end
    def Ascender; end
    def Ascender=(v); end
    def Descender; end
    def Descender=(v); end
    def Line_Gap; end
    def Line_Gap=(v); end
    def advance_Height_Max; end
    def advance_Height_Max=(v); end
    def min_Top_Side_Bearing; end
    def min_Top_Side_Bearing=(v); end
    def min_Bottom_Side_Bearing; end
    def min_Bottom_Side_Bearing=(v); end
    def xMax_Extent; end
    def xMax_Extent=(v); end
    def caret_Slope_Rise; end
    def caret_Slope_Rise=(v); end
    def caret_Slope_Run; end
    def caret_Slope_Run=(v); end
    def caret_Offset; end
    def caret_Offset=(v); end
    def Reserved; end
    def Reserved=(v); end
    def metric_Data_Format; end
    def metric_Data_Format=(v); end
    def number_Of_HMetrics; end
    def number_Of_HMetrics=(v); end
    def long_metrics; end
    def long_metrics=(v); end
    def short_metrics; end
    def short_metrics=(v); end

    layout  Version:                 :FT_Fixed,
            Ascender:                :FT_Short,
            Descender:               :FT_Short,
            Line_Gap:                :FT_Short,

            advance_Height_Max:      :FT_UShort,

            min_Top_Side_Bearing:    :FT_Short,
            min_Bottom_Side_Bearing: :FT_Short,
            xMax_Extent:             :FT_Short,
            caret_Slope_Rise:        :FT_Short,
            caret_Slope_Run:         :FT_Short,
            caret_Offset:            :FT_Short,

            Reserved:                [:FT_Short, 4],

            metric_Data_Format:      :FT_Short,
            number_Of_HMetrics:      :FT_UShort,

            long_metrics:            :pointer,
            short_metrics:           :pointer
  end
end