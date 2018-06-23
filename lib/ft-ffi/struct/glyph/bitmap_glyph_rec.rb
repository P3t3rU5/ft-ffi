require_relative '../image/bitmap'

module FT
  class BitmapGlyphRec < FFIAdditions::Struct
    layout root: GlyphRec,
           left:     :int,
           top:      :int,
           bitmap: Bitmap

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end