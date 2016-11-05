require 'ft-ffi/struct/glyph/glyph_rec'
require 'ft-ffi/struct/outline'

module FT
  class OutlineGlyphRec < FFIAdditions::Struct
    layout root:   GlyphRec,
           outline: Outline

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end