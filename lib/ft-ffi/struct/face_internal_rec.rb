require_relative 'matrix'
require_relative 'image/vector'
require_relative 'service_cache_rec'
require_relative 'incremental/interface_rec'

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