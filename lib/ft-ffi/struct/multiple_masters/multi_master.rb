require_relative 'multiple_masters_axis'

module FT
  MAX_MM_AXIS = 4

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Multi_Master
  class Multi_Master < FFIAdditions::Struct
    layout num_axis:    :FT_UInt,
           num_designs: :FT_UInt,
           axis:        [MM_Axis, MAX_MM_AXIS]
  end
end