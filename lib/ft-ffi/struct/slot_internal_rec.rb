require_relative '../enum/slot_internal_flag'
require_relative 'glyph/glyph_loader_rec'
require_relative 'vector'
require_relative 'matrix'

module FT
  class Slot_InternalRec < FFIAdditions::Struct
    layout loader:      GlyphLoaderRec,
           flags:     SlotInternalFlag,
           glyph_transformed: :FT_Bool,
           glyph_matrix:        Matrix,
           glyph_delta:         Vector,
           glyph_hints:       :pointer
  end
end