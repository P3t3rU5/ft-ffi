require_relative 'face_rec'

module FT
  class FT_Prop_IncreaseXHeight < FFIAdditions::Struct
    layout face:   FaceRec,
           limit: :FT_UInt
  end
end