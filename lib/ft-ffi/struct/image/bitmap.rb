require_relative '../../enum/image/pixel_mode'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Bitmap
  class Bitmap < FFIAdditions::Struct
    def rows; end
    def rows=(v); end
    def width; end
    def width=(v); end
    def pitch; end
    def pitch=(v); end
    def buffer; end
    def buffer=(v); end
    def num_grays; end
    def num_grays=(v); end
    def pixel_mode; end
    def pixel_mode=(v); end
    def palette_mode; end
    def palette_mode=(v); end
    def palette; end
    def palette=(v); end

    layout rows:          :uint,
           width:         :uint,
           pitch:         :int,
           buffer:        :pointer,
           num_grays:     :ushort,
           pixel_mode:    PixelMode,
           palette_mode:  :uchar,
           palette:       :pointer

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end
