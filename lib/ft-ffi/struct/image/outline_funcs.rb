require_relative 'vector'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_MoveToFunc
  Outline_MoveToFunc = callback 'Outline_MoveToFunc', [Vector.ptr(:in), :pointer], :int

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_LineToFunc
  Outline_LineToFunc = callback 'Outline_LineToFunc', [Vector.ptr(:in), :pointer], :int

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_ConicToFunc
  Outline_ConicToFunc = callback 'Outline_ConicToFunc', [Vector.ptr(:in), Vector.ptr(:in), :pointer], :int

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_CubicToFunc
  Outline_CubicToFunc = callback 'Outline_CubicToFunc', [Vector.ptr(:in), Vector.ptr(:in), Vector.ptr(:in), :pointer], :int

  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline_Funcs
  class Outline_Funcs < FFIAdditions::Struct
    def move_to; end
    def move_to=(v); end
    def line_to; end
    def line_to=(v); end
    def conic_to; end
    def conic_to=(v); end
    def cubic_to; end
    def cubic_to=(v); end
    def shift; end
    def shift=(v); end
    def delta; end
    def delta=(v); end

    layout move_to:  Outline_MoveToFunc,
           line_to:  Outline_LineToFunc,
           conic_to: Outline_ConicToFunc,
           cubic_to: Outline_CubicToFunc,

           shift:    :int,
           delta:    :FT_Pos
  end
end
