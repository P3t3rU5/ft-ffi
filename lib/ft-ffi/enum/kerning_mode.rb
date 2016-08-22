require 'ft-ffi'

module FT
  KerningMode = enum :kerning_mode, [
      :DEFAULT,
      :UNFITTED,
      :UNSCALED
  ]
end