module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Bitmap_Size
  class Bitmap_Size < FFIAdditions::Struct
    layout height: :FT_Short,
           width:  :FT_Short,
           size:   :FT_Pos,
           x_ppem: :FT_Pos,
           y_ppem: :FT_Pos

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end