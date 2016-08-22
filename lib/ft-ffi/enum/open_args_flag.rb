require 'ft-ffi'

module FT
  OpenArgsFlag = enum :open_args_flag, [
      :MEMORY,   0x1,
      :STREAM,   0x2,
      :PATHNAME, 0x4,
      :DRIVER,   0x8,
      :PARAMS,  0x10,
  ]

  # define_prefix(:OPEN, OpenArgsFlag)
end