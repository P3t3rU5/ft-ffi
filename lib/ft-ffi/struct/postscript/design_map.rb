module FT
  class DesignMapRec < FFIAdditions::Struct
    layout num_points:    :FT_Byte,
           design_points: :pointer,
           blend_points:  :pointer
  end
end