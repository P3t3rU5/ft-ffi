module FT
  class DesignMapRec < FFIAdditions::Struct
    def num_points; end
    def num_points=(v); end
    def design_points; end
    def design_points=(v); end
    def blend_points; end
    def blend_points=(v); end

    layout num_points:    :FT_Byte,
           design_points: :pointer,
           blend_points:  :pointer
  end
end