module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_BBox
  class BBox < FFIAdditions::Struct
    layout xMin: :FT_Pos,
           yMin: :FT_Pos,
           xMax: :FT_Pos,
           yMax: :FT_Pos

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end