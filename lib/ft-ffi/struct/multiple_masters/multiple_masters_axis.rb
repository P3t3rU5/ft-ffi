require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_MM_Axis
  class MM_Axis < FFIAdditions::Struct
    layout name:     :string,
           minimum: :FT_Long,
           maximum: :FT_Long
  end
end