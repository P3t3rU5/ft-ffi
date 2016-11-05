require 'ft-ffi/enum/glyph_format'

require 'ft-ffi/struct/library_rec'
require 'ft-ffi/struct/vector'
require 'ft-ffi/struct/glyph/glyph_class'

module FT
  class GlyphRec < FFIAdditions::Struct
    layout library:   LibraryRec.ptr,
           clazz:     GlyphClass.ptr,
           format:       GlyphFormat,
           advance:       Vector.ptr

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end