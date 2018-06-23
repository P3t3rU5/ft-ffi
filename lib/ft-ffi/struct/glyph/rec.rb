require_relative '../../enum/image/glyph_format'
require_relative '../library_rec'
require_relative '../image/vector'
require_relative 'class'

module FT
  class GlyphRec < FFIAdditions::Struct
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