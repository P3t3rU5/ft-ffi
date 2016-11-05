require 'ft-ffi/struct/face_rec'

module FT
  class Prop_GlyphToScriptMap < FFIAdditions::Struct
    layout face: FaceRec,
           map: :pointer
  end
end