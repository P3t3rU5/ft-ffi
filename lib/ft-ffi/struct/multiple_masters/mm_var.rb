require_relative 'var_axis'
require_relative 'var_named_style'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-multiple_masters.html#FT_MM_Var
  class MM_Var < FFIAdditions::Struct
    def num_axis; end
    def num_axis=(v); end
    def num_designs; end
    def num_designs=(v); end
    def num_namedstyles; end
    def num_namedstyles=(v); end
    def axis; end
    def axis=(v); end
    def namedstyle; end
    def namedstyle=(v); end

    layout num_axis:        :FT_UInt,
           num_designs:     :FT_UInt,
           num_namedstyles: :FT_UInt,
           axis:            Var_Axis.ptr,
           namedstyle:      Var_Named_Style.ptr
  end
end