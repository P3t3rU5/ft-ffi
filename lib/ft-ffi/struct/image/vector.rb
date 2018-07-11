module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Vector
  class Vector < FFIAdditions::Struct
    def x; end
    def x=(v); end
    def y; end
    def y=(v); end

    layout x: :FT_Pos,
           y: :FT_Pos

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end