require_relative '../struct/stream/rec'
require_relative '../struct/module/rec'
require_relative '../enum/open_args_flag'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Open_Args
  class Open_Args < FFIAdditions::Struct
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