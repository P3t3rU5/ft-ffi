module FT
  class Size_Metrics < FFIAdditions::Struct
    layout x_ppem:      :FT_UShort,
           y_ppem:      :FT_UShort,

           x_scale:      :FT_Fixed,
           y_scale:      :FT_Fixed,

           ascender:       :FT_Pos,
           descender:      :FT_Pos,
           height:         :FT_Pos,
           max_advance:    :FT_Pos

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end