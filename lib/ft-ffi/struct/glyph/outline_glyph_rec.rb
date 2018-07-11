require_relative 'rec'
require_relative '../image/outline'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_management.html#FT_OutlineGlyphRec
  class OutlineGlyphRec < FFIAdditions::Struct
    def root; end
    def root=(v); end
    def outline; end
    def outline=(v); end

    layout root:    GlyphRec,
           outline: Outline

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end