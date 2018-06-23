require_relative '../../enum/outline_flag'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline
  class Outline < FFIAdditions::Struct
    layout n_contours: :short,
           n_points:   :short,

           points:   :pointer, # array of Vector
           tags:     :pointer,
           contours: :pointer,

           flags: OutlineFlag

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end