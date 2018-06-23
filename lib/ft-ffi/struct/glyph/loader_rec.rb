require_relative '../memory_rec'
require_relative 'load_rec'

module FT
  class GlyphLoaderRec < FFIAdditions::Struct
    layout memory:        MemoryRec.ptr,
           max_points:    :FT_UInt,
           max_contours:  :FT_UInt,
           max_subglyphs: :FT_UInt,
           use_extra:     :FT_Bool,

           base:          GlyphLoaderRec.ptr,
           current:       GlyphLoaderRec.ptr,

           other:         :pointer
  end
end