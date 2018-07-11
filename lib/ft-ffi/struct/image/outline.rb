require_relative '../../enum/outline_flag'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-outline_processing.html#FT_Outline
  class Outline < FFIAdditions::Struct
    def n_contours; end
    def n_contours=(v); end
    def n_points; end
    def n_points=(v); end
    def points; end
    def points=(v); end
    def tags; end
    def tags=(v); end
    def contours; end
    def contours=(v); end

    layout n_contours: :short,
           n_points:   :short,

           points:     :pointer, # array of Vector
           tags:       :pointer,
           contours:   :pointer,

           flags: OutlineFlag

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end