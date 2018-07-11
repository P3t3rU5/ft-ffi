require_relative 'desc'
require_relative '../memory_rec'

module FT
  class StreamRec < FFIAdditions::Struct; end

  Stream_IoFunc = callback 'Stream_IoFunc', [StreamRec.ptr(:in), :ulong, :pointer, :ulong], :ulong
  Stream_CloseFunc = callback 'Stream_CloseFunc', [StreamRec.ptr(:in)], :void

  class StreamRec
    def base; end
    def base=(v); end
    def size; end
    def size=(v); end
    def pos; end
    def pos=(v); end
    def descriptor; end
    def descriptor=(v); end
    def pathname; end
    def pathname=(v); end
    def read; end
    def read=(v); end
    def close; end
    def close=(v); end
    def memory; end
    def memory=(v); end
    def cursor; end
    def cursor=(v); end
    def limit; end
    def limit=(v); end

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