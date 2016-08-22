require 'ft-ffi'

module FT
  class ServiceCacheRec < FFIAdditions::Struct
    layout service_POSTSCRIPT_FONT_NAME: :FT_Pointer,
           service_MULTI_MASTERS:        :FT_Pointer,
           service_GLYPH_DICT:           :FT_Pointer,
           service_PFR_METRICS:          :FT_Pointer,
           service_WINFNT:               :FT_Pointer
  end
end