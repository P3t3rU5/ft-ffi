require 'ft-ffi'

module FT
  # MemoryRec
  Alloc_Func = callback 'Alloc_Func', [MemoryRec, :long], :pointer
  Free_Func = callback 'Free_Func', [MemoryRec, :pointer], :void
  Realloc_Func = callback 'Realloc_Func', [MemoryRec, :long, :long, :pointer], :pointer

  class MemoryRec < FFIAdditions::Struct
    layout user:        :pointer,
           alloc:     Alloc_Func,
           free:       Free_Func,
           realloc: Realloc_Func
  end
end