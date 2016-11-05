require 'ft-ffi'

module FT
  def FTC_IMAGE_TYPE_COMPARE( d1, d2 )
    d1.face_id == d2.face_id && d1.width == d2.width && d1.flags == d2.flags
  end
end