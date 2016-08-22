require 'ft-ffi'

module FT
  EncodingType = enum :enconding_type, [
      :NONE, 0,
      :ARRAY,
      :STANDARD,
      :ISOLATIN1,
      :EXPERT,
  ]

  # define_prefix(:T1_ENCODING_TYPE, EncodingType)
end