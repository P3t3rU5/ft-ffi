require_relative '../typedef/ftc_face_id'

module FT
  class FTC_ScalerRec < FFIAdditions::Struct
    def face_id; end
    def face_id=(v); end
    def width; end
    def width=(v); end
    def height; end
    def height=(v); end
    def pixel; end
    def pixel=(v); end
    def x_res; end
    def x_res=(v); end
    def y_res; end
    def y_res=(v); end

    layout face_id: :FTC_FaceID,
           width:   :FT_UInt,
           height:  :FT_UInt,
           pixel:   :FT_Int,
           x_res:   :FT_UInt,
           y_res:   :FT_UInt
  end
end