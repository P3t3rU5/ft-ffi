module FT
  class TT_PCLT < FFIAdditions::Struct
    def Version; end
    def Version=(v); end
    def FontNumber; end
    def FontNumber=(v); end
    def Pitch; end
    def Pitch=(v); end
    def xHeight; end
    def xHeight=(v); end
    def Style; end
    def Style=(v); end
    def TypeFamily; end
    def TypeFamily=(v); end
    def CapHeight; end
    def CapHeight=(v); end
    def SymbolSet; end
    def SymbolSet=(v); end
    def TypeFace; end
    def TypeFace=(v); end
    def CharacterComplement; end
    def CharacterComplement=(v); end
    def FileName; end
    def FileName=(v); end
    def StrokeWeight; end
    def StrokeWeight=(v); end
    def WidthType; end
    def WidthType=(v); end
    def SerifStyle; end
    def SerifStyle=(v); end
    def Reserved; end
    def Reserved=(v); end

    layout Version:             :FT_Fixed,
           FontNumber:          :FT_ULong,
           Pitch:               :FT_UShort,
           xHeight:             :FT_UShort,
           Style:               :FT_UShort,
           TypeFamily:          :FT_UShort,
           CapHeight:           :FT_UShort,
           SymbolSet:           :FT_UShort,
           TypeFace:            [:FT_Char, 16],
           CharacterComplement: [:FT_Char, 8],
           FileName:            [:FT_Char, 6],
           StrokeWeight:        :FT_Char,
           WidthType:           :FT_Char,
           SerifStyle:          :FT_Byte,
           Reserved:            :FT_Byte
  end
end