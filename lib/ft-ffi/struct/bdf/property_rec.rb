require 'ft-ffi/enum/bdf_pcf/property_type'

module FT
  class PropertyRecUnion < FFIAdditions::Struct
    layout atom:     :pointer,
           integer:  :FT_Int32,
           cardinal: :FT_UInt32
  end

  # https://www.freetype.org/freetype2/docs/reference/ft2-bdf_fonts.html#BDF_PropertyRec
  class PropertyRec < FFIAdditions::Struct
    layout type: PropertyType,
           u:    PropertyRecUnion
  end
end