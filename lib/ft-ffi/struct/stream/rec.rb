require_relative 'desc'
require_relative '../memory_rec'

module FT
  class StreamRec < FFIAdditions::Struct; end

  Stream_IoFunc = callback 'Stream_IoFunc', [StreamRec.ptr(:in), :ulong, :pointer, :ulong], :ulong
  Stream_CloseFunc = callback 'Stream_CloseFunc', [StreamRec.ptr(:in)], :void

  class StreamRec
    layout base:       :pointer,
           size:       :ulong,
           pos:        :ulong,

           descriptor: StreamDesc.ptr,
           pathname:   StreamDesc.ptr,
           read:       Stream_IoFunc,
           close:      Stream_CloseFunc,

           memory:     MemoryRec.ptr,
           cursor:     :pointer,
           limit:      :pointer
  end
end