require 'ffi-additions/struct'

require_relative '../enum/face_flag'
require_relative '../enum/style_flag'
require_relative 'image/bbox'
require_relative 'image/bitmap_size'
require_relative 'generic'
require_relative 'glyph/slot_rec'
require_relative 'size/rec'
require_relative 'char_map_rec'
require_relative 'driver_rec'
require_relative 'memory_rec'
require_relative 'face_internal_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_FaceRec
  class FaceRec < FFIAdditions::Struct
    def num_faces; end
    def num_faces=(v); end
    def face_index; end
    def face_index=(v); end
    def face_flags; end
    def face_flags=(v); end
    def style_flags; end
    def style_flags=(v); end
    def num_glyphs; end
    def num_glyphs=(v); end
    def family_name; end
    def family_name=(v); end
    def style_name; end
    def style_name=(v); end
    def num_fixed_sizes; end
    def num_fixed_sizes=(v); end
    def available_sizes; end
    def available_sizes=(v); end
    def num_charmaps; end
    def num_charmaps=(v); end
    def charmaps; end
    def charmaps=(v); end
    def generic; end
    def generic=(v); end
    def bbox; end
    def bbox=(v); end
    def units_per_EM; end
    def units_per_EM=(v); end
    def ascender; end
    def ascender=(v); end
    def descender; end
    def descender=(v); end
    def height; end
    def height=(v); end
    def max_advance_width; end
    def max_advance_width=(v); end
    def max_advance_height; end
    def max_advance_height=(v); end
    def underline_position; end
    def underline_position=(v); end
    def underline_thickness; end
    def underline_thickness=(v); end
    def glyph_slot; end
    def glyph_slot=(v); end
    def face_size; end
    def face_size=(v); end
    def charmap; end
    def charmap=(v); end
    def driver; end
    def driver=(v); end
    def memory; end
    def memory=(v); end
    def stream; end
    def stream=(v); end
    def sizes_list; end
    def sizes_list=(v); end
    def autohint; end
    def autohint=(v); end
    def extensions; end
    def extensions=(v); end
    def internal; end
    def internal=(v); end

    layout num_faces:            :FT_Long,
           face_index:           :FT_Long,

           face_flags:           FaceFlag, # Long
           style_flags:          StyleFlag, # Long

           num_glyphs:           :FT_Long,

           family_name:          :strptr,
           style_name:           :strptr,

           num_fixed_sizes:      :FT_Int,
           available_sizes:      Bitmap_Size.ptr,

           num_charmaps:         :FT_Int,
           charmaps:             :pointer, # array of charmaps

           generic:              Generic,

           bbox:                 BBox,

           units_per_EM:        :FT_UShort,
           ascender:            :FT_Short,
           descender:           :FT_Short,
           height:              :FT_Short,

           max_advance_width:   :FT_Short,
           max_advance_height:  :FT_Short,

           underline_position:  :FT_Short,
           underline_thickness: :FT_Short,

           glyph_slot:          GlyphSlotRec.ptr,
           face_size:           SizeRec.ptr,
           charmap:             CharMapRec.ptr,

           driver:              DriverRec.ptr,
           memory:              MemoryRec.ptr,
           stream:              StreamRec.ptr,

           sizes_list:          ListRec,

           autohint:            Generic,
           extensions:          :pointer,

           internal:            Face_InternalRec.ptr

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end