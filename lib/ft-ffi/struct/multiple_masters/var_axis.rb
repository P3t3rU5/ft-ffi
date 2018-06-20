require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Var_Axis
  class Var_Axis < FFIAdditions::Struct
    layout name:    :string,
           minimum: :FT_Fixed,
           def:     :FT_Fixed,
           maximum: :FT_Fixed,
           tag:     :FT_ULong,
           strid:   :FT_UInt
  end
end