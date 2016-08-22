require 'ft-ffi'

module FT
  PropertyType = enum :property_type, [
      :NONE,     0,
      :ATOM,     1,
      :INTEGER,  2,
      :CARDINAL, 3
  ]

  # define_prefix(:BDF_PROPERTY_TYPE, PropertyType)
end