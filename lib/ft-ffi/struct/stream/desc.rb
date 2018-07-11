module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-system_interface.html#FT_StreamDesc
  class StreamDesc < FFIAdditions::Union
    def value; end
    def value=(v); end
    def pointer; end
    def pointer=(v); end

    layout value:   :long,
           pointer: :pointer
  end
end