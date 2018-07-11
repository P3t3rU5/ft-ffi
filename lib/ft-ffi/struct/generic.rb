module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Generic_Finalizer
  Generic_Finalizer = callback 'Generic_Finalizer', [:pointer], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-basic_types.html#FT_Generic
  class Generic < FFIAdditions::Struct
    def ftData; end
    def ftData=(v); end
    def finalizer; end
    def finalizer=(v); end

    layout ftData:    :pointer,
           finalizer: Generic_Finalizer

    def to_s
      inspect
    end

    def inspect
      members.map { |member| "#{member.inspect} = #{self[member]}" }.join(', ')
    end
  end
end