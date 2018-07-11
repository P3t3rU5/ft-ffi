module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Var_Axis
  class Var_Axis < FFIAdditions::Struct
    def name; end
    def name=(v); end
    def minimum; end
    def minimum=(v); end
    def def; end
    def def=(v); end
    def maximum; end
    def maximum=(v); end
    def tag; end
    def tag=(v); end
    def strid; end
    def strid=(v); end

    layout name:    :string,
           minimum: :FT_Fixed,
           def:     :FT_Fixed,
           maximum: :FT_Fixed,
           tag:     :FT_ULong,
           strid:   :FT_UInt
  end
end