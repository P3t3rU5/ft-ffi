require 'ft-ffi'

module FT
  class Bitmap_Size < FFIAdditions::Struct
    layout :height, :FT_Short,
           :width,  :FT_Short,
           :size,     :FT_Pos,
           :x_ppem,   :FT_Pos,
           :y_ppem,   :FT_Pos



    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end