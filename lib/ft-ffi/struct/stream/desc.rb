module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-system_interface.html#FT_StreamDesc
  class StreamDesc < FFIAdditions::Union
    layout value:   :long,
           pointer: :pointer
  end
end