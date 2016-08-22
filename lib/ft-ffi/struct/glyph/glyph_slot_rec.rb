require 'ft-ffi/enum/glyph_format'

require 'ft-ffi/struct/library_rec'
require 'ft-ffi/struct/face_rec'
require 'ft-ffi/struct/glyph/glyph_rec'
require 'ft-ffi/struct/bitmap'
require 'ft-ffi/struct/outline'
require 'ft-ffi/struct/sub_glyph_rec'
require 'ft-ffi/struct/slot_internal_rec'
require 'ft-ffi/struct/glyph/glyph_metrics'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_GlyphSlotRec
  class GlyphSlotRec < FFIAdditions::Struct
    layout library:        LibraryRec.ptr,
           face:              FaceRec.ptr,
           next:         GlyphSlotRec.ptr,
           reserved:             :FT_UInt,
           generic:           Generic.ptr,

           metrics:     Glyph_Metrics.ptr,
           linearHoriAdvance:   :FT_Fixed,
           linearVertAdvance:   :FT_Fixed,
           advance:            Vector.ptr,

           format:            GlyphFormat,

           bitmap:             Bitmap.ptr,
           bitmap_left:           :FT_Int,
           bitmap_top:            :FT_Int,

           outline:           Outline.ptr,

           num_subglyphs:        :FT_UInt,
           subglyphs:     SubGlyphRec.ptr,
           control_data:         :pointer,
           control_len:             :long,
           lsb_delta:             :FT_Pos,
           rsb_delta:             :FT_Pos,
           other:                :pointer,
           internal: Slot_InternalRec.ptr

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end