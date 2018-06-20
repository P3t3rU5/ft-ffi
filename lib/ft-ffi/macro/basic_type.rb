module FT
  class << self
    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_MAKE_TAG
    def MAKE_TAG(x1, x2, x3, x4)
      x1 << 24 | x2 << 16 | x3 << 8 | x4
    end

    def BOOL(x)
      x != 0
    end

    # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_IMAGE_TAG
    def FT_IMAGE_TAG(value, x1, x2, x3, x4 )
      value = x1 << 24 | x2 << 16 | x3 << 8 | x4
    end
  end
end