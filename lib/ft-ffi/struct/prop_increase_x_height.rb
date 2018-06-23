require_relative 'face_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-properties.html#FT_Prop_IncreaseXHeight
  class Prop_IncreaseXHeight < FFIAdditions::Struct
    layout face:   FaceRec,
           limit: :FT_UInt
  end
end