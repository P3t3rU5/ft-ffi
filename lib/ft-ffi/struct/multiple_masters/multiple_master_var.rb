require 'ft-ffi/struct/multiple_masters/var_axis'
require 'ft-ffi/struct/multiple_masters/var_named_style'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_MM_Var
  class MM_Var < FFIAdditions::Struct
    layout :num_axis,          :FT_UInt,
           :num_designs,       :FT_UInt,
           :num_namedstyles,   :FT_UInt,
           :axis,              Var_Axis,
           :namedstyle, Var_Named_Style,
  end
end