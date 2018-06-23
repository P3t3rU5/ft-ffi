require_relative '../../enum/image/raster_params_flag'
require_relative 'bitmap'
require_relative 'bbox'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-raster.html#FT_SpanFunc
  SpanFunc = callback 'SpanFunc', [:int, :int, :pointer, :pointer], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-raster.html#FT_Raster_BitTest_Func
  Raster_BitTest_Func = callback 'Raster_BitTest_Func', [:int, :int, :pointer], :int

  # https://www.freetype.org/freetype2/docs/reference/ft2-raster.html#FT_Raster_BitSet_Func
  Raster_BitSet_Func = callback 'Raster_BitSet_Func', [:int, :int, :pointer], :void

  class Raster_Params < FFIAdditions::Struct
    layout target:      Bitmap.ptr,
           source:      :pointer,
           flags:       RasterParamsFlag,
           gray_spans:  SpanFunc,
           black_spans: SpanFunc,
           bit_test:    Raster_BitTest_Func,
           bit_set:     Raster_BitSet_Func,
           user:        :pointer,
           clip_box:    BBox
  end
end