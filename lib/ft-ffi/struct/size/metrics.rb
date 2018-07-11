module FT
  class Size_Metrics < FFIAdditions::Struct
    def x_ppem; end
    def x_ppem=(v); end
    def y_ppem; end
    def y_ppem=(v); end
    def x_scale; end
    def x_scale=(v); end
    def y_scale; end
    def y_scale=(v); end
    def ascender; end
    def ascender=(v); end
    def descender; end
    def descender=(v); end
    def height; end
    def height=(v); end
    def max_advance; end
    def max_advance=(v); end

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