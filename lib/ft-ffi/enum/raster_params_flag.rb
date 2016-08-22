require 'ft-ffi'

module FT
  RasterParamsFlag = enum :raster_params_flag, [
      :DEFAULT, 0x0,
      :AA,      0x1,
      :DIRECT,  0x2,
      :CLIP,    0x4,
  ]

  # define_prefix(:RASTER_FLAG, RasterParamsFlag)
end