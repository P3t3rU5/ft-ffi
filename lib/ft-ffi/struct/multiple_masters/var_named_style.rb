module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Var_Named_Style
  class Var_Named_Style < FFIAdditions::Struct
    layout coords: :pointer, # FT_Fixed*
           strid:  :FT_UInt
  end
end