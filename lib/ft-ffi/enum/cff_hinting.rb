module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-properties.html#FT_HINTING_XXX
  CFFHinting = enum :cff_hinting, [:FREETYPE, 0, :ADOBE, 1]

  define_prefix(:CFF_HINTING, CFFHinting)
end