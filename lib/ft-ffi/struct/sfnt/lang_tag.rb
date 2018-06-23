module FT
  class SfntLangTag < FFIAdditions::Struct
    layout string:     :pointer,
           string_len: :FT_UInt
  end
end