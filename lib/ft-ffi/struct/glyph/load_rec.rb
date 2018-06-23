require_relative '../image/outline'
require_relative '../image/vector'
require_relative '../sub_glyph_rec'

module FT
  class GlyphLoadRec < FFIAdditions::Struct
    layout outline:       Outline,
           extra_points:  :pointer, #array of vector
           extra_points2: :pointer, #array of vector
           num_subglyphs: :FT_UInt,
           subglyphs:     SubGlyphRec
  end
end