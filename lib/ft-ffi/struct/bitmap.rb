require_relative '../enum/pixel_mode'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Bitmap
  class Bitmap < FFIAdditions::Struct
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
