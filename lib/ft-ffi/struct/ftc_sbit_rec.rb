require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_SBitRec
  class FTC_SBitRec < FFIAdditions::Struct
    layout width: :FT_Byte,
           height: :FT_Byte,
           left: :FT_Char,
           top: :FT_Char,

           format: :FT_Byte,
           max_grays: :FT_Byte,
           pitch: :FT_Short,
           xadvance: :FT_Char,
           yadvance: :FT_Char,

           buffer: :pointer
  end
end