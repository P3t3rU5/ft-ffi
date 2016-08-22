require 'ft-ffi/struct/matrix'
require 'ft-ffi/struct/vector'
require 'ft-ffi/struct/service_cache_rec'
require 'ft-ffi/struct/incremental_interface_rec'

module FT
  class Face_InternalRec < FFIAdditions::Struct
    layout transform_matrix:                        Matrix,
           transform_delta:                         Vector,
           transform_flags:                        :FT_Int,
           services:                       ServiceCacheRec,
           incremental_interface: Incremental_InterfaceRec,
           refcount:                               :FT_Int
  end
end