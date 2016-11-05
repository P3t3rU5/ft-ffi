require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-winfnt_fonts.html#FT_WinFNT_HeaderRec
  class WinFNT_HeaderRec < FFIAdditions::Struct
    layout version:               :FT_UShort,
           file_size:              :FT_ULong,
           copyright:         [:FT_Byte, 60],
           file_type:             :FT_UShort,
           nominal_point_size:    :FT_UShort,
           vertical_resolution:   :FT_UShort,
           horizontal_resolution: :FT_UShort,
           ascent:                :FT_UShort,
           internal_leading:      :FT_UShort,
           external_leading:      :FT_UShort,
           italic:                  :FT_Byte,
           underline:               :FT_Byte,
           strike_out:              :FT_Byte,
           weight:                :FT_UShort,
           charset:                 :FT_Byte,
           pixel_width:           :FT_UShort,
           pixel_height:          :FT_UShort,
           pitch_and_family:        :FT_Byte,
           avg_width:             :FT_UShort,
           max_width:             :FT_UShort,
           first_char:              :FT_Byte,
           last_char:               :FT_Byte,
           default_char:            :FT_Byte,
           break_char:              :FT_Byte,
           bytes_per_row:         :FT_UShort,
           device_offset:          :FT_ULong,
           face_name_offset:       :FT_ULong,
           bits_pointer:           :FT_ULong,
           bits_offset:            :FT_ULong,
           reserved:                :FT_Byte,
           flags:                  :FT_ULong,
           A_space:               :FT_UShort,
           B_space:               :FT_UShort,
           C_space:               :FT_UShort,
           color_table_offset:    :FT_UShort,
           reserved1:          [:FT_ULong, 4]
  end
end