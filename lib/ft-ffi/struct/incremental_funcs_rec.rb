require_relative 'data'
require_relative 'incremental_metrics_rec'

module FT
  Incremental_GetGlyphDataFunc = callback 'Incremental_GetGlyphDataFunc', [:pointer, :FT_UInt, Data], :FT_Error
  Incremental_FreeGlyphDataFunc = callback 'Incremental_FreeGlyphDataFunc', [:pointer, Data], :void
  Incremental_GetGlyphMetricsFunc = callback 'Incremental_GetGlyphMetricsFunc',
                                             [:pointer, :FT_UInt, :FT_Bool, Incremental_MetricsRec], :FT_Error

  class Incremental_FuncsRec < FFIAdditions::Struct
    layout get_glyph_data:       Incremental_GetGlyphDataFunc,
           free_glyph_data:     Incremental_FreeGlyphDataFunc,
           get_glyph_metrics: Incremental_GetGlyphMetricsFunc
  end
end