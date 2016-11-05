require 'ft-ffi/typedef/ftc_face_id'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_ImageTypeRec
  class FTC_ImageTypeRec < FFIAdditions::Struct
    layout face_id: :FTC_FaceID,
           width:      :FT_UInt,
           height:     :FT_UInt,
           flags:     :FT_Int32
  end
end