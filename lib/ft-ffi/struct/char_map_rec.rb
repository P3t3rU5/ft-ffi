require_relative '../enum/encoding'
require_relative '../enum/true_type/platform'

module FT
  class CharMapRec < FFIAdditions::Struct
    layout face:        FaceRec.ptr,
           encoding:    FT::Encoding,
           platform_id: FT::Platform,
           encoding_id: :FT_UShort

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end

end