module FT
  SizeRequestType = enum :size_request_type, [
      :NOMINAL,
      :REAL_DIM,
      :BBOX,
      :CELL,
      :SCALES,

      :MAX
  ]

  define_prefix(:SIZE_REQUEST_TYPE, SizeRequestType)
end