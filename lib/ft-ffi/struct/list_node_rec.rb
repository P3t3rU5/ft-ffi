module FT
  class ListNodeRec < FFIAdditions::Struct
    layout prev: ListNodeRec.ptr, next: ListNodeRec.ptr, data: :pointer
  end
end