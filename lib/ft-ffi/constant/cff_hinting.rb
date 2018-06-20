module FT
  CFFHinting = enum :cff_hinting, [
    :FREETYPE, 0,
    :ADOBE,    1
  ]

  define_prefix(:CFF_HINTING, CFFHinting)
end