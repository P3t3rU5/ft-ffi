require_relative '../../enum/image/glyph_format'
require_relative '../library_rec'
require_relative '../face_rec'
require_relative '../image/bitmap'
require_relative '../image/outline'
require_relative '../sub_glyph_rec'
require_relative '../slot_internal_rec'
require_relative 'rec'
require_relative 'metrics'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_GlyphSlotRec
  class GlyphSlotRec < FFIAdditions::Struct
    def library; end
    def library=(v); end
    def face; end
    def face=(v); end
    def next; end
    def next=(v); end
    def reserved; end
    def reserved=(v); end
    def generic; end
    def generic=(v); end
    def metrics; end
    def metrics=(v); end
    def linearHoriAdvance; end
    def linearHoriAdvance=(v); end
    def linearVertAdvance; end
    def linearVertAdvance=(v); end
    def advance; end
    def advance=(v); end
    def format; end
    def format=(v); end
    def bitmap; end
    def bitmap=(v); end
    def bitmap_left; end
    def bitmap_left=(v); end
    def bitmap_top; end
    def bitmap_top=(v); end
    def outline; end
    def outline=(v); end
    def num_subglyphs; end
    def num_subglyphs=(v); end
    def subglyphs; end
    def subglyphs=(v); end
    def control_data; end
    def control_data=(v); end
    def control_len; end
    def control_len=(v); end
    def lsb_delta; end
    def lsb_delta=(v); end
    def rsb_delta; end
    def rsb_delta=(v); end
    def other; end
    def other=(v); end
    def internal; end
    def internal=(v); end

    layout library:           LibraryRec.ptr,
           face:              FaceRec.ptr,
           next:              GlyphSlotRec.ptr,
           reserved:          :FT_UInt,
           generic:           Generic,

           metrics:           Glyph_Metrics,
           linearHoriAdvance: :FT_Fixed,
           linearVertAdvance: :FT_Fixed,
           advance:           Vector,

           format:            GlyphFormat,

           bitmap:            Bitmap,
           bitmap_left:       :FT_Int,
           bitmap_top:        :FT_Int,

           outline:           Outline,

           num_subglyphs:     :FT_UInt,
           subglyphs:         SubGlyphRec.ptr,

           control_data:      :pointer,
           control_len:       :long,

           lsb_delta:         :FT_Pos,
           rsb_delta:         :FT_Pos,

           other:             :pointer,

           internal:          Slot_InternalRec.ptr

    # def to_s
    #   inspect
    # end
    #
    # def inspect
    #   members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    # end
  end
end