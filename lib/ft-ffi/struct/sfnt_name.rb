module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-sfnt_names.html#FT_SfntName
  class SfntName < FFIAdditions::Struct
    layout platform_id: :FT_UShort,
           encoding_id: :FT_UShort,
           language_id: :FT_UShort,
           name_id:     :FT_UShort,

           string:        :pointer,
           string_len:    :FT_UInt
  end
end