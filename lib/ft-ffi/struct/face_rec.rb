require 'ffi-additions/struct'

require 'ft-ffi/enum/face_flag'
require 'ft-ffi/enum/style_flag'

require 'ft-ffi/struct/bbox'
require 'ft-ffi/struct/bitmap_size'
require 'ft-ffi/struct/generic'
require 'ft-ffi/struct/glyph/glyph_slot_rec'
require 'ft-ffi/struct/size_rec'
require 'ft-ffi/struct/char_map_rec'
require 'ft-ffi/struct/driver_rec'
require 'ft-ffi/struct/memory_rec'
require 'ft-ffi/struct/face_internal_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_FaceRec
  class FaceRec < FFIAdditions::Struct
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