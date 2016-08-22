module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-glyph_management.html#FT_Glyph_BBox_Mode
  GlyphBBoxMode = enum :glyph_bbox_mode, [
      :GLYPH_BBOX_UNSCALED, 0,
      :GLYPH_BBOX_SUBPIXELS,0,
      :GLYPH_BBOX_GRIDFIT,  1,
      :GLYPH_BBOX_TRUNCATE, 2,
      :GLYPH_BBOX_PIXELS,   3
  ]
end