require_relative 'private_rec'
require_relative '../../struct/matrix'
require_relative '../../struct/image/vector'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-type1_tables.html#CID_FaceDictRec
  class CID_FaceDictRec < FFIAdditions::Struct
    def private_dict; end
    def private_dict=(v); end
    def len_buildchar; end
    def len_buildchar=(v); end
    def forcebold_threshold; end
    def forcebold_threshold=(v); end
    def stroke_width; end
    def stroke_width=(v); end
    def expansion_factor; end
    def expansion_factor=(v); end
    def paint_type; end
    def paint_type=(v); end
    def font_type; end
    def font_type=(v); end
    def font_matrix; end
    def font_matrix=(v); end
    def font_offset; end
    def font_offset=(v); end
    def num_subrs; end
    def num_subrs=(v); end
    def subrmap_offset; end
    def subrmap_offset=(v); end
    def sd_bytes; end
    def sd_bytes=(v); end

    layout private_dict:        PS_PrivateRec,

           len_buildchar:       :FT_UInt,
           forcebold_threshold: :FT_Fixed,
           stroke_width:        :FT_Pos,
           expansion_factor:    :FT_Fixed,

           paint_type:          :FT_Byte,
           font_type:           :FT_Byte,
           font_matrix:         Matrix,
           font_offset:         Vector,

           num_subrs:           :FT_UInt,
           subrmap_offset:      :FT_ULong,
           sd_bytes:            :FT_Int
  end
end