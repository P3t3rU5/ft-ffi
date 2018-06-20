require_relative '../typedef/ftc_face_id'

module FT
  class FTC_ScalerRec < FFIAdditions::Struct
    layout face_id: :FTC_FaceID,
           width:      :FT_UInt,
           height:     :FT_UInt,
           pixel:       :FT_Int,
           x_res:      :FT_UInt,
           y_res:      :FT_UInt
  end
end