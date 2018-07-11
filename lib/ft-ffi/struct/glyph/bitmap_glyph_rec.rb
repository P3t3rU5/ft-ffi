require_relative '../image/bitmap'

module FT
  class BitmapGlyphRec < FFIAdditions::Struct
    def root; end
    def root=(v); end
    def left; end
    def left=(v); end
    def top; end
    def top=(v); end
    def bitmap; end
    def bitmap=(v); end

    layout root:   GlyphRec,
           left:   :int,
           top:    :int,
           bitmap: Bitmap

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end