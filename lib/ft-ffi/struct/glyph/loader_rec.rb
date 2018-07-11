require_relative '../memory_rec'
require_relative 'load_rec'

module FT
  class GlyphLoaderRec < FFIAdditions::Struct
    def memory; end
    def memory=(v); end
    def max_points; end
    def max_points=(v); end
    def max_contours; end
    def max_contours=(v); end
    def max_subglyphs; end
    def max_subglyphs=(v); end
    def use_extra; end
    def use_extra=(v); end
    def base; end
    def base=(v); end
    def current; end
    def current=(v); end
    def other; end
    def other=(v); end

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