module FT
  class TT_PCLT < FFIAdditions::Struct
    layout Version:                :FT_Fixed,
           FontNumber:             :FT_ULong,
           Pitch:                  :FT_UShort,
           xHeight:                :FT_UShort,
           Style:                  :FT_UShort,
           TypeFamily:             :FT_UShort,
           CapHeight:              :FT_UShort,
           SymbolSet:              :FT_UShort,
           TypeFace:               [:FT_Char, 16],
           CharacterComplement:    [:FT_Char, 8],
           FileName:               [:FT_Char, 6],
           StrokeWeight:           :FT_Char,
           WidthType:              :FT_Char,
           SerifStyle:             :FT_Byte,
           Reserved:               :FT_Byte
  end
end