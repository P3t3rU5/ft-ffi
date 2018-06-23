module FT
  KerningMode = enum :kerning_mode, [
      :DEFAULT,
      :UNFITTED,
      :UNSCALED
  ]

  define_prefix(:KERNING, KerningMode)
end