module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-type1_tables.html#PS_FontInfoRec
  class PS_FontInfoRec < FFIAdditions::Struct
    layout version:                :string,
           notice:                 :string,
           full_name:              :string,
           family_name:            :string,
           weight:                 :string,
           italic_angle:          :FT_Long,
           is_fixed_pitch:        :FT_Bool,
           underline_position:   :FT_Short,
           underline_thickness: :FT_UShort
  end
end