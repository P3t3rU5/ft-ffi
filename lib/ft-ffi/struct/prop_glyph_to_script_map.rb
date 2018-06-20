require_relative 'face_rec'

module FT
  class Prop_GlyphToScriptMap < FFIAdditions::Struct
    layout face: FaceRec.ptr,
           map:  :pointer
  end
end