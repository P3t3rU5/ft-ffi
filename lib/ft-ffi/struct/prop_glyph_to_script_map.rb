require_relative 'face_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-properties.html#FT_Prop_GlyphToScriptMap
  class Prop_GlyphToScriptMap < FFIAdditions::Struct
    def face; end
    def face=(v); end
    def map; end
    def map=(v); end

    layout face: FaceRec.ptr,
           map:  :pointer
  end
end