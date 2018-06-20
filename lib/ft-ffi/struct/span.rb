module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-raster.html#FT_Span
  class Span < FFIAdditions::Struct
    layout x:        :short,
           len:     :ushort,
           coverage: :uchar
  end
end