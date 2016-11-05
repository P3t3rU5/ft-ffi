require 'ft-ffi'

module FT
  ValidateOpenType = enum :validate_open_type, [
     :BASE, 0x0100,
     :GDEF, 0x0200,
     :GPOS, 0x0400,
     :GSUB, 0x0800,
     :JSTF, 0x1000,
     :MATH, 0x2000,
     :OT,   0x3F00
  ]

  define_prefix(:VALIDATE, ValidateOpenType)
end