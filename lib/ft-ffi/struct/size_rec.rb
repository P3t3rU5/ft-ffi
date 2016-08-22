require 'ft-ffi/struct/face_rec'
require 'ft-ffi/struct/generic'
require 'ft-ffi/struct/size_metrics'

module FT
  class SizeRec < FFIAdditions::Struct
    layout face:          FaceRec.ptr,
           generic:       Generic.ptr,
           metrics:  Size_Metrics.ptr,
           internal:         :pointer

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end