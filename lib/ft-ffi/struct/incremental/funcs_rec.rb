require_relative '../data'
require_relative 'metrics_rec'

module FT
  Incremental_GetGlyphDataFunc = callback 'Incremental_GetGlyphDataFunc', [:pointer, :FT_UInt, Data.ptr(:out)], :FT_Error
  Incremental_FreeGlyphDataFunc = callback 'Incremental_FreeGlyphDataFunc', [:pointer, Data.ptr(:in)], :void
  Incremental_GetGlyphMetricsFunc = callback 'Incremental_GetGlyphMetricsFunc',
                                             [:pointer, :FT_UInt, :FT_Bool, Incremental_MetricsRec.ptr(:in)], :FT_Error

  # https://www.freetype.org/freetype2/docs/reference/ft2-incremental.html#FT_Incremental_FuncsRec
  class Incremental_FuncsRec < FFIAdditions::Struct
    layout get_glyph_data:     Incremental_GetGlyphDataFunc,
           free_glyph_data:   Incremental_FreeGlyphDataFunc,
           get_glyph_metrics: Incremental_GetGlyphMetricsFunc
  end
end