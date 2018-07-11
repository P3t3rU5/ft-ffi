module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-cache_subsystem.html#FTC_SBitRec
  class FTC_SBitRec < FFIAdditions::Struct
    def width; end
    def width=(v); end
    def height; end
    def height=(v); end
    def left; end
    def left=(v); end
    def top; end
    def top=(v); end
    def format; end
    def format=(v); end
    def max_grays; end
    def max_grays=(v); end
    def pitch; end
    def pitch=(v); end
    def xadvance; end
    def xadvance=(v); end
    def yadvance; end
    def yadvance=(v); end
    def buffer; end
    def buffer=(v); end

    layout width:     :FT_Byte,
           height:    :FT_Byte,
           left:      :FT_Char,
           top:       :FT_Char,

           format:    :FT_Byte,
           max_grays: :FT_Byte,
           pitch:     :FT_Short,
           xadvance:  :FT_Char,
           yadvance:  :FT_Char,

           buffer:    :pointer
  end
end