module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-incremental.html#FT_Incremental_MetricsRec
  class Incremental_MetricsRec < FFIAdditions::Struct
    def bearing_x; end
    def bearing_x=(v); end
    def bearing_y; end
    def bearing_y=(v); end
    def advance; end
    def advance=(v); end
    def advance_v; end
    def advance_v=(v); end

    layout bearing_x: :FT_Long,
           bearing_y: :FT_Long,
           advance:   :FT_Long,
           advance_v: :FT_Long
  end
end