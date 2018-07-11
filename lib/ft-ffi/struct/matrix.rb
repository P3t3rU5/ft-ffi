module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Matrix
  class Matrix < FFIAdditions::Struct
    def xx; end
    def xx=(v); end
    def xy; end
    def xy=(v); end
    def yy; end
    def yy=(v); end
    def yx; end
    def yx=(v); end

    layout xx: :FT_Fixed,
           xy: :FT_Fixed,
           yy: :FT_Fixed,
           yx: :FT_Fixed

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end