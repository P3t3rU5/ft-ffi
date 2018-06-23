require_relative '../../enum/image/glyph_format'
require_relative 'rec'
require_relative 'slot_rec'

module FT
  Glyph_InitFunc = callback 'Glyph_InitFunc', [GlyphRec.ptr, GlyphSlotRec.ptr], :FT_Error
  Glyph_DoneFunc = callback 'Glyph_DoneFunc', [GlyphRec.ptr], :void
  Glyph_CopyFunc = callback 'Glyph_CopyFunc', [GlyphRec.ptr, GlyphRec.ptr], :FT_Error
  Glyph_TransformFunc = callback 'Glyph_TransformFunc', [GlyphRec.ptr, Matrix.ptr, Vector.ptr], :void
  Glyph_GetBBoxFunc = callback 'Glyph_GetBBoxFunc', [GlyphRec.ptr, BBox.ptr], :void
  Glyph_PrepareFunc = callback 'Glyph_PrepareFunc', [GlyphRec.ptr, GlyphSlotRec.ptr], :FT_Error

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