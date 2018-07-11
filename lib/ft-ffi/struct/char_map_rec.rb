require_relative '../enum/encoding'
require_relative '../enum/true_type/platform'

module FT
  class CharMapRec < FFIAdditions::Struct
    def face; end
    def face=(v); end
    def encoding; end
    def encoding=(v); end
    def platform_id; end
    def platform_id=(v); end
    def encoding_id; end
    def encoding_id=(v); end

    layout face:        FaceRec.ptr,
           encoding:    FT::Encoding,
           platform_id: FT::Platform,
           encoding_id: :FT_UShort

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end

end