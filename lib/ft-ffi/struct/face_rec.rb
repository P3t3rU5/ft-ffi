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