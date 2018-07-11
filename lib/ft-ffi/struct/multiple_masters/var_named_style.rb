module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Var_Named_Style
  class Var_Named_Style < FFIAdditions::Struct
    def coords; end
    def coords=(v); end
    def strid; end
    def strid=(v); end
    def psid; end
    def psid=(v); end

    layout coords: :pointer, # FT_Fixed*
           strid:  :FT_UInt,
           psid:   :FT_UInt
  end
end