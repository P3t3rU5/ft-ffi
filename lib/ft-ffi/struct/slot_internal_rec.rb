require 'ft-ffi/enum/slot_internal_flag'

require 'ft-ffi/struct/glyph/glyph_loader_rec'
require 'ft-ffi/struct/vector'
require 'ft-ffi/struct/matrix'

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