require_relative 'private_rec'
require_relative '../../struct/matrix'
require_relative '../../struct/vector'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-type1_tables.html#CID_FaceDictRec
  class CID_FaceDictRec < FFIAdditions::Struct
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