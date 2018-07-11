module FT
  class Data < FFIAdditions::Struct
    def pointer; end
    def pointer=(v); end
    def length; end
    def length=(v); end

    layout pointer: :pointer,
           length:  :FT_Int
  end
end