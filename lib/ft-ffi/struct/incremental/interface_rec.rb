require_relative 'funcs_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-incremental.html#FT_Incremental_InterfaceRec
  class Incremental_InterfaceRec < FFIAdditions::Struct
    def funcs; end
    def funcs=(v); end
    def object; end
    def object=(v); end

    layout funcs:  Incremental_FuncsRec,
           object: :pointer
  end
end