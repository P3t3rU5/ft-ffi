require 'ft-ffi/struct/validator_rec'
require 'ft-ffi/enum/validation_level'

module FT
  # void ft_validator_error( FT_Validator  valid, FT_Error      error );
  attach_function 'validator_error', 'ft_validator_error', [ValidatorRec, :FT_Error],:void

  # void ft_validator_init( FT_Validator valid, const FT_Byte* base, const FT_Byte* limit, FT_ValidationLevel  level );
  attach_function 'validator_init', 'ft_validator_init', [ValidatorRec, :FT_Byte, ValidationLevel], :void

  # FT_Int ft_validator_run( FT_Validator  valid );
  attach_function 'validator_run', 'ft_validator_run', [ValidatorRec], :FT_Int
end