require 'ft-ffi/struct/incremental_funcs_rec'

module FT
  class Incremental_InterfaceRec < FFIAdditions::Struct
    layout funcs: Incremental_FuncsRec,
           object:            :pointer
  end
end