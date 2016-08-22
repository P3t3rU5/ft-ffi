require 'ft-ffi/enum/encoding'
require 'ft-ffi/enum/true_type/platform'

module FT
  class CharMapRec < FFIAdditions::Struct
    layout :face,        FaceRec.ptr,
           :encoding,       Encoding,
           :platform_id,    Platform,
           :encoding_id,  :FT_UShort

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end

end