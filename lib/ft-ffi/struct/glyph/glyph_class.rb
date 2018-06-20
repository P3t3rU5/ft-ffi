require_relative '../../enum/glyph_format'
require_relative 'glyph_rec'
require_relative 'glyph_slot_rec'

module FT
  Glyph_InitFunc = callback 'Glyph_InitFunc', [GlyphRec, GlyphSlotRec], :FT_Error
  Glyph_DoneFunc = callback 'Glyph_DoneFunc', [GlyphRec], :void
  Glyph_CopyFunc = callback 'Glyph_CopyFunc', [GlyphRec, GlyphRec], :FT_Error
  Glyph_TransformFunc = callback 'Glyph_TransformFunc', [GlyphRec, Matrix, Vector], :void
  Glyph_GetBBoxFunc = callback 'Glyph_GetBBoxFunc', [GlyphRec, BBox], :void
  Glyph_PrepareFunc = callback 'Glyph_PrepareFunc', [GlyphRec, GlyphSlotRec], :FT_Error

  class GlyphClass < FFIAdditions::Struct
    layout glyph_size:      :FT_Long,
           glyph_format:    GlyphFormat,
           glyph_init:      Glyph_InitFunc,
           glyph_done:      Glyph_DoneFunc,
           glyph_copy:      Glyph_CopyFunc,
           glyph_transform: Glyph_TransformFunc,
           glyph_bbox:      Glyph_GetBBoxFunc,
           glyph_prepare:   Glyph_PrepareFunc
  end
end