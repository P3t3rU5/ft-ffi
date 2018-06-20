require_relative '../enum/validation_level'

module FT
  class ValidatorRec < FFIAdditions::Struct
    layout base:         :FT_Byte,
           limit:        :FT_Byte,
           level: ValidationLevel,
           error:       :FT_Error
  end
end