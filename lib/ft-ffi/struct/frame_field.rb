require 'ft-ffi'

module FT
  class Frame_Field < FFIAdditions::Struct
    layout value:    :FT_Byte,
           size:     :FT_Byte,
           offset: :FT_UShort
  end
end