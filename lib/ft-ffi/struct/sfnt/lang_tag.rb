module FT
  class SfntLangTag < FFIAdditions::Struct
    def string; end
    def string=(v); end
    def string_len; end
    def string_len=(v); end

    layout string:     :pointer,
           string_len: :FT_UInt
  end
end