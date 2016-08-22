module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_UnitVector
  class UnitVector < FFIAdditions::Struct
    layout x: :FT_F2Dot14,
           y: :FT_F2Dot14

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end