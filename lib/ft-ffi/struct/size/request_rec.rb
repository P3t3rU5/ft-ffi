require_relative '../../enum/size_request_type'

module FT
  class Size_RequestRec < FFIAdditions::Struct
    def type; end
    def type=(v); end
    def width; end
    def width=(v); end
    def height; end
    def height=(v); end
    def horiResolution; end
    def horiResolution=(v); end
    def vertResolution; end
    def vertResolution=(v); end

    layout type:           SizeRequestType,
           width:          :FT_Long,
           height:         :FT_Long,
           horiResolution: :FT_UInt,
           vertResolution: :FT_UInt
  end
end
