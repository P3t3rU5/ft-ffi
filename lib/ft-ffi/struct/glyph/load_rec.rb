require_relative '../image/outline'
require_relative '../image/vector'
require_relative '../sub_glyph_rec'

module FT
  class GlyphLoadRec < FFIAdditions::Struct
    def outline; end
    def outline=(v); end
    def extra_points; end
    def extra_points=(v); end
    def extra_points2; end
    def extra_points2=(v); end
    def num_subglyphs; end
    def num_subglyphs=(v); end
    def subglyphs; end
    def subglyphs=(v); end

    layout outline:       Outline,
           extra_points:  :pointer, #array of vector
           extra_points2: :pointer, #array of vector
           num_subglyphs: :FT_UInt,
           subglyphs:     SubGlyphRec
  end
end