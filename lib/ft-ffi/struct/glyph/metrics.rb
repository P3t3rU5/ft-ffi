module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Glyph_Metrics
  class Glyph_Metrics < FFIAdditions::Struct
    def width; end
    def width=(v); end
    def height; end
    def height=(v); end
    def horiBearingX; end
    def horiBearingX=(v); end
    def horiBearingY; end
    def horiBearingY=(v); end
    def horiAdvance; end
    def horiAdvance=(v); end
    def vertBearingX; end
    def vertBearingX=(v); end
    def vertBearingY; end
    def vertBearingY=(v); end
    def vertAdvance; end
    def vertAdvance=(v); end

    layout width:        :FT_Pos,
           height:       :FT_Pos,
           horiBearingX: :FT_Pos,
           horiBearingY: :FT_Pos,
           horiAdvance:  :FT_Pos,
           vertBearingX: :FT_Pos,
           vertBearingY: :FT_Pos,
           vertAdvance:  :FT_Pos

    # def to_s
    #   inspect
    # end
    #
    # def inspect
    #   members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    # end
  end
end