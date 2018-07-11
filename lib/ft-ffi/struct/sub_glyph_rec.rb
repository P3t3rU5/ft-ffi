require_relative 'matrix'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_SubGlyph
  class SubGlyphRec < FFIAdditions::Struct
    def index; end
    def index=(v); end
    def flags; end
    def flags=(v); end
    def arg1; end
    def arg1=(v); end
    def arg2; end
    def arg2=(v); end
    def transform; end
    def transform=(v); end

    layout index:     :FT_Int,
           flags:     :FT_UShort,
           arg1:      :FT_Int,
           arg2:      :FT_Int,
           transform: Matrix
  end
end