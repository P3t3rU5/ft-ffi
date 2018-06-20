module FT
  ValidationLevel = enum :validation_level, [
      :DEFAULT, 0,
      :TIGHT,
      :PARANOID
  ]

  define_prefix(:VALIDATE, ValidationLevel)
end