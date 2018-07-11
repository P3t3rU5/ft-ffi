require_relative 'matrix'
require_relative 'image/vector'
require_relative 'service_cache_rec'
require_relative 'incremental/interface_rec'

module FT
  class Face_InternalRec < FFIAdditions::Struct
    def transform_matrix; end
    def transform_matrix=(v); end
    def transform_delta; end
    def transform_delta=(v); end
    def transform_flags; end
    def transform_flags=(v); end
    def services; end
    def services=(v); end
    def incremental_interface; end
    def incremental_interface=(v); end
    def refcount; end
    def refcount=(v); end

    layout transform_matrix:      Matrix,
           transform_delta:       Vector,
           transform_flags:       :FT_Int,
           services:              ServiceCacheRec,
           incremental_interface: Incremental_InterfaceRec,
           refcount:              :FT_Int
  end
end