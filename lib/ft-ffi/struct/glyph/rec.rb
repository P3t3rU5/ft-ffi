require_relative '../../enum/image/glyph_format'
require_relative '../library_rec'
require_relative '../image/vector'
require_relative 'class'

module FT
  class GlyphRec < FFIAdditions::Struct
    def library; end
    def library=(v); end
    def clazz; end
    def clazz=(v); end
    def format; end
    def format=(v); end
    def advance; end
    def advance=(v); end

    layout library:   LibraryRec.ptr,
           clazz:     GlyphClass.ptr,
           format:    GlyphFormat,
           advance:   Vector.ptr

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end