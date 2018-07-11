require_relative 'face_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-properties.html#FT_Prop_IncreaseXHeight
  class Prop_IncreaseXHeight < FFIAdditions::Struct
    def face; end
    def face=(v); end
    def limit; end
    def limit=(v); end

    layout face:   FaceRec,
           limit: :FT_UInt
  end
end