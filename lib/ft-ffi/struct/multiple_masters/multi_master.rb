require_relative 'mm_axis'

module FT
  T1_MAX_MM_AXIS ||= 4

  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_Multi_Master
  class Multi_Master < FFIAdditions::Struct
    def num_axis; end
    def num_axis=(v); end
    def num_designs; end
    def num_designs=(v); end
    def axis; end
    def axis=(v); end

    layout num_axis:    :FT_UInt,
           num_designs: :FT_UInt,
           axis:        [MM_Axis, T1_MAX_MM_AXIS]
  end
end