module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-raster.html#FT_Span
  class Span < FFIAdditions::Struct
    def x; end
    def x=(v); end
    def len; end
    def len=(v); end
    def coverage; end
    def coverage=(v); end

    layout x:        :short,
           len:      :ushort,
           coverage: :uchar
  end
end