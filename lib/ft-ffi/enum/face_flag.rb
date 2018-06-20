require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_FACE_FLAG_XXX
  FaceFlag = enum Long, :face_flag, [
      :SCALABLE,         0x0001,
      :FIXED_SIZES,      0x0002,
      :FIXED_WIDTH,      0x0004,
      :SFNT,             0x0008,
      :HORIZONTAL,       0x0010,
      :VERTICAL,         0x0020,
      :KERNING,          0x0040,
      :FAST_GLYPHS,      0x0080,
      :MULTIPLE_MASTERS, 0x0100,
      :GLYPH_NAMES,      0x0200,
      :EXTERNAL_STREAM,  0x0400,
      :HINTER,           0x0800,
      :CID_KEYED,        0x1000,
      :TRICKY,           0x2000
  ]
end