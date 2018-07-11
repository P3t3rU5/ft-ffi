require_relative '../../enum/bdf_pcf/property_type'

module FT
  class PropertyRecUnion < FFIAdditions::Struct
    def atom; end
    def atom=(v); end
    def integer; end
    def integer=(v); end
    def cardinal; end
    def cardinal=(v); end

    layout atom:     :pointer,
           integer:  :FT_Int32,
           cardinal: :FT_UInt32
  end

  # https://www.freetype.org/freetype2/docs/reference/ft2-bdf_fonts.html#BDF_PropertyRec
  class PropertyRec < FFIAdditions::Struct
    def type; end
    def type=(v); end
    def u; end
    def u=(v); end

        layout type: PropertyType,
           u:    PropertyRecUnion
  end
end