require 'ft-ffi/struct/postscript/private_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-type1_tables.html#CID_FaceDictRec
  class CID_FaceDictRec < FFIAdditions::Struct
    layout private_dict:    PS_PrivateRec,

           len_buildchar:        :FT_UInt,
           forcebold_threshold: :FT_Fixed,
           stroke_width:          :FT_Pos,
           expansion_factor:    :FT_Fixed,

           paint_type:           :FT_Byte,
           font_type:            :FT_Byte,
           font_matrix:        :FT_Matrix,
           font_offset:        :FT_Vector,

           num_subrs:            :FT_UInt,
           subrmap_offset:      :FT_ULong,
           sd_bytes:              :FT_Int
  end
end