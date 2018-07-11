require_relative '../enum/slot_internal_flag'
require_relative 'glyph/loader_rec'
require_relative 'image/vector'
require_relative 'matrix'

module FT
  class Slot_InternalRec < FFIAdditions::Struct
    def loader; end
    def loader=(v); end
    def flags; end
    def flags=(v); end
    def glyph_transformed; end
    def glyph_transformed=(v); end
    def glyph_matrix; end
    def glyph_matrix=(v); end
    def glyph_delta; end
    def glyph_delta=(v); end
    def glyph_hints; end
    def glyph_hints=(v); end

    layout loader:            GlyphLoaderRec,
           flags:             SlotInternalFlag,
           glyph_transformed: :FT_Bool,
           glyph_matrix:      Matrix,
           glyph_delta:       Vector,
           glyph_hints:       :pointer
  end
end