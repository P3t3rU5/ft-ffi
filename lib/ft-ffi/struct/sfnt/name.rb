module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-sfnt_names.html#FT_SfntName
  class SfntName < FFIAdditions::Struct
    def platform_id; end
    def platform_id=(v); end
    def encoding_id; end
    def encoding_id=(v); end
    def language_id; end
    def language_id=(v); end
    def name_id; end
    def name_id=(v); end
    def string; end
    def string=(v); end
    def string_len; end
    def string_len=(v); end

    layout platform_id: :FT_UShort,
           encoding_id: :FT_UShort,
           language_id: :FT_UShort,
           name_id:     :FT_UShort,

           string:      :pointer,
           string_len:  :FT_UInt
  end
end