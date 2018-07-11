module FT
  class ListNodeRec < FFIAdditions::Struct
    def prev; end
    def prev=(v); end
    def next; end
    def next=(v); end
    def data; end
    def data=(v); end

    layout prev: ListNodeRec.ptr,
           next: ListNodeRec.ptr,
           data: :pointer
  end
end