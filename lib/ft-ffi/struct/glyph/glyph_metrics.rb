require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Glyph_Metrics
  class Glyph_Metrics < FFIAdditions::Struct
    layout width:        :FT_Pos,
           height:       :FT_Pos,
           horiBearingX: :FT_Pos,
           horiBearingY: :FT_Pos,
           horiAdvance:  :FT_Pos,
           vertBearingX: :FT_Pos,
           vertBearingY: :FT_Pos,
           vertAdvance:  :FT_Pos

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end