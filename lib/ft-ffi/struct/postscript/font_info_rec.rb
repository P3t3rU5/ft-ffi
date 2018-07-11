module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-type1_tables.html#PS_FontInfoRec
  class PS_FontInfoRec < FFIAdditions::Struct
    def version; end
    def version=(v); end
    def notice; end
    def notice=(v); end
    def full_name; end
    def full_name=(v); end
    def family_name; end
    def family_name=(v); end
    def weight; end
    def weight=(v); end
    def italic_angle; end
    def italic_angle=(v); end
    def is_fixed_pitch; end
    def is_fixed_pitch=(v); end
    def underline_position; end
    def underline_position=(v); end
    def underline_thickness; end
    def underline_thickness=(v); end

    layout version:             :string,
           notice:              :string,
           full_name:           :string,
           family_name:         :string,
           weight:              :string,
           italic_angle:        :FT_Long,
           is_fixed_pitch:      :FT_Bool,
           underline_position:  :FT_Short,
           underline_thickness: :FT_UShort
  end
end