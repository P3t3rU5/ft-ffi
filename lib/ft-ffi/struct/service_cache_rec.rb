module FT
  class ServiceCacheRec < FFIAdditions::Struct
    def service_POSTSCRIPT_FONT_NAME; end
    def service_POSTSCRIPT_FONT_NAME=(v); end
    def service_MULTI_MASTERS; end
    def service_MULTI_MASTERS=(v); end
    def service_GLYPH_DICT; end
    def service_GLYPH_DICT=(v); end
    def service_PFR_METRICS; end
    def service_PFR_METRICS=(v); end
    def service_WINFNT; end
    def service_WINFNT=(v); end

    layout service_POSTSCRIPT_FONT_NAME: :FT_Pointer,
           service_MULTI_MASTERS:        :FT_Pointer,
           service_GLYPH_DICT:           :FT_Pointer,
           service_PFR_METRICS:          :FT_Pointer,
           service_WINFNT:               :FT_Pointer
  end
end