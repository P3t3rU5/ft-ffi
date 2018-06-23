module FT
  class TT_MaxProfile < FFIAdditions::Struct
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