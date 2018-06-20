module FT
  class Data < FFIAdditions::Struct
    layout pointer: :pointer,
           length:   :FT_Int
  end
end