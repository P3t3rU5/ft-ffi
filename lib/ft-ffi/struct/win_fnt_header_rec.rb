module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-winfnt_fonts.html#FT_WinFNT_HeaderRec
  class WinFNT_HeaderRec < FFIAdditions::Struct
    def version; end
    def version=(v); end
    def file_size; end
    def file_size=(v); end
    def copyright; end
    def copyright=(v); end
    def file_type; end
    def file_type=(v); end
    def nominal_point_size; end
    def nominal_point_size=(v); end
    def vertical_resolution; end
    def vertical_resolution=(v); end
    def horizontal_resolution; end
    def horizontal_resolution=(v); end
    def ascent; end
    def ascent=(v); end
    def internal_leading; end
    def internal_leading=(v); end
    def external_leading; end
    def external_leading=(v); end
    def italic; end
    def italic=(v); end
    def underline; end
    def underline=(v); end
    def strike_out; end
    def strike_out=(v); end
    def weight; end
    def weight=(v); end
    def charset; end
    def charset=(v); end
    def pixel_width; end
    def pixel_width=(v); end
    def pixel_height; end
    def pixel_height=(v); end
    def pitch_and_family; end
    def pitch_and_family=(v); end
    def avg_width; end
    def avg_width=(v); end
    def max_width; end
    def max_width=(v); end
    def first_char; end
    def first_char=(v); end
    def last_char; end
    def last_char=(v); end
    def default_char; end
    def default_char=(v); end
    def break_char; end
    def break_char=(v); end
    def bytes_per_row; end
    def bytes_per_row=(v); end
    def device_offset; end
    def device_offset=(v); end
    def face_name_offset; end
    def face_name_offset=(v); end
    def bits_pointer; end
    def bits_pointer=(v); end
    def bits_offset; end
    def bits_offset=(v); end
    def reserved; end
    def reserved=(v); end
    def flags; end
    def flags=(v); end
    def A_space; end
    def A_space=(v); end
    def B_space; end
    def B_space=(v); end
    def C_space; end
    def C_space=(v); end
    def color_table_offset; end
    def color_table_offset=(v); end
    def reserved1; end
    def reserved1=(v); end

    layout version:               :FT_UShort,
           file_size:             :FT_ULong,
           copyright:             [:FT_Byte, 60],
           file_type:             :FT_UShort,
           nominal_point_size:    :FT_UShort,
           vertical_resolution:   :FT_UShort,
           horizontal_resolution: :FT_UShort,
           ascent:                :FT_UShort,
           internal_leading:      :FT_UShort,
           external_leading:      :FT_UShort,
           italic:                :FT_Byte,
           underline:             :FT_Byte,
           strike_out:            :FT_Byte,
           weight:                :FT_UShort,
           charset:               :FT_Byte,
           pixel_width:           :FT_UShort,
           pixel_height:          :FT_UShort,
           pitch_and_family:      :FT_Byte,
           avg_width:             :FT_UShort,
           max_width:             :FT_UShort,
           first_char:            :FT_Byte,
           last_char:             :FT_Byte,
           default_char:          :FT_Byte,
           break_char:            :FT_Byte,
           bytes_per_row:         :FT_UShort,
           device_offset:         :FT_ULong,
           face_name_offset:      :FT_ULong,
           bits_pointer:          :FT_ULong,
           bits_offset:           :FT_ULong,
           reserved:              :FT_Byte,
           flags:                 :FT_ULong,
           A_space:               :FT_UShort,
           B_space:               :FT_UShort,
           C_space:               :FT_UShort,
           color_table_offset:    :FT_UShort,
           reserved1:             [:FT_ULong, 4]
  end
end