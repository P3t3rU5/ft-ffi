require_relative '../face_rec'
require_relative '../generic'
require_relative 'metrics'

module FT
  class SizeRec < FFIAdditions::Struct
    def face; end
    def face=(v); end
    def generic; end
    def generic=(v); end
    def metrics; end
    def metrics=(v); end
    def internal; end
    def internal=(v); end

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