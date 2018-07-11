require_relative '../struct/stream/rec'
require_relative '../struct/module/rec'
require_relative '../enum/open_args_flag'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Open_Args
  class Open_Args < FFIAdditions::Struct
    def flags; end
    def flags=(v); end
    def memory_base; end
    def memory_base=(v); end
    def memory_size; end
    def memory_size=(v); end
    def pathname; end
    def pathname=(v); end
    def stream; end
    def stream=(v); end
    def driver; end
    def driver=(v); end
    def num_params; end
    def num_params=(v); end
    def params; end
    def params=(v); end

    layout flags:       OpenArgsFlag,
           memory_base: :pointer,
           memory_size: :FT_Long,
           pathname:    :string,
           stream:      StreamRec.ptr,
           driver:      ModuleRec.ptr,
           num_params:  :FT_Int,
           params:      :pointer
  end
end