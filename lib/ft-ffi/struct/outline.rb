require 'ft-ffi/enum/outline_flag'

module FT
  class Outline < FFIAdditions::Struct
    layout n_contours: :short,
           n_points:   :short,

           points:   :pointer, # array of Vector"
           tags:     :pointer,
           contours: :pointer,

           flags: OutlineFlag

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end