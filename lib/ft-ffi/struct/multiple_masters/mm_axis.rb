module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_MM_Axis
  class MM_Axis < FFIAdditions::Struct
    def name; end
    def name=(v); end
    def minimum; end
    def minimum=(v); end
    def maximum; end
    def maximum=(v); end

    layout name:    :string,
           minimum: :FT_Long,
           maximum: :FT_Long
  end
end