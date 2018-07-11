require_relative 'memory_rec'

module FT
  # MemoryRec
  Alloc_Func = callback 'Alloc_Func', [MemoryRec.ptr(:in), :long], :pointer
  Free_Func = callback 'Free_Func', [MemoryRec.ptr(:in), :pointer], :void
  Realloc_Func = callback 'Realloc_Func', [MemoryRec.ptr(:in), :long, :long, :pointer], :pointer

  class MemoryRec < FFIAdditions::Struct
    def user; end
    def user=(v); end
    def alloc; end
    def alloc=(v); end
    def free; end
    def free=(v); end
    def realloc; end
    def realloc=(v); end

    layout user:    :pointer,
           alloc:   Alloc_Func,
           free:    Free_Func,
           realloc: Realloc_Func
  end
end