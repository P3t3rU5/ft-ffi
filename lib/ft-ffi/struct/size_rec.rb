require_relative 'face_rec'
require_relative 'generic'
require_relative 'size_metrics'

module FT
  class SizeRec < FFIAdditions::Struct
    layout face:     FaceRec.ptr,
           generic:  Generic,
           metrics:  Size_Metrics,
           internal: :pointer

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end