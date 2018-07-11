module FT
  class Frame_Field < FFIAdditions::Struct
    def value; end
    def value=(v); end
    def size; end
    def size=(v); end
    def offset; end
    def offset=(v); end

    layout value:  :FT_Byte,
           size:   :FT_Byte,
           offset: :FT_UShort
  end
end