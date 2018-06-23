require_relative '../../enum/size_request_type'

module FT
  class Size_RequestRec < FFIAdditions::Struct
    layout type:    SizeRequestType,
           width:          :FT_Long,
           height:         :FT_Long,
           horiResolution: :FT_UInt,
           vertResolution: :FT_UInt
  end
end
