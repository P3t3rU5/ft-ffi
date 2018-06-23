module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_management.html#FT_Glyph_BBox_Mode
  GlyphBBoxMode = enum :glyph_bbox_mode, [:UNSCALED,  0, :SUBPIXELS, 0, :GRIDFIT, 1, :TRUNCATE, 2, :PIXELS, 3]

  define_prefix(:GLYPH_BBOX, GlyphBBoxMode)
end