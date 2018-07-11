require_relative '../enum/validation_level'

module FT
  class ValidatorRec < FFIAdditions::Struct
    def base; end
    def base=(v); end
    def limit; end
    def limit=(v); end
    def level; end
    def level=(v); end
    def error; end
    def error=(v); end

    layout base:  :FT_Byte,
           limit: :FT_Byte,
           level: ValidationLevel,
           error: :FT_Error
  end
end