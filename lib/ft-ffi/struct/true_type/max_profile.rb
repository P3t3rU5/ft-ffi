module FT
  class TT_MaxProfile < FFIAdditions::Struct
    def version; end
    def version=(v); end
    def numGlyphs; end
    def numGlyphs=(v); end
    def maxPoints; end
    def maxPoints=(v); end
    def maxContours; end
    def maxContours=(v); end
    def maxCompositePoints; end
    def maxCompositePoints=(v); end
    def maxCompositeContours; end
    def maxCompositeContours=(v); end
    def maxZones; end
    def maxZones=(v); end
    def maxTwilightPoints; end
    def maxTwilightPoints=(v); end
    def maxStorage; end
    def maxStorage=(v); end
    def maxFunctionDefs; end
    def maxFunctionDefs=(v); end
    def maxInstructionDefs; end
    def maxInstructionDefs=(v); end
    def maxStackElements; end
    def maxStackElements=(v); end
    def maxSizeOfInstructions; end
    def maxSizeOfInstructions=(v); end
    def maxComponentElements; end
    def maxComponentElements=(v); end
    def maxComponentDepth; end
    def maxComponentDepth=(v); end

    layout version:               :FT_Fixed,
           numGlyphs:             :FT_UShort,
           maxPoints:             :FT_UShort,
           maxContours:           :FT_UShort,
           maxCompositePoints:    :FT_UShort,
           maxCompositeContours:  :FT_UShort,
           maxZones:              :FT_UShort,
           maxTwilightPoints:     :FT_UShort,
           maxStorage:            :FT_UShort,
           maxFunctionDefs:       :FT_UShort,
           maxInstructionDefs:    :FT_UShort,
           maxStackElements:      :FT_UShort,
           maxSizeOfInstructions: :FT_UShort,
           maxComponentElements:  :FT_UShort,
           maxComponentDepth:     :FT_UShort
  end
end