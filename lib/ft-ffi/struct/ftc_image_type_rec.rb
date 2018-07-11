require_relative '../typedef/ftc_face_id'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_ImageTypeRec
  class FTC_ImageTypeRec < FFIAdditions::Struct
    def face_id; end
    def face_id=(v); end
    def width; end
    def width=(v); end
    def height; end
    def height=(v); end
    def flags; end
    def flags=(v); end

    layout face_id: :FTC_FaceID,
           width:   :FT_UInt,
           height:  :FT_UInt,
           flags:   :FT_Int32
  end
end