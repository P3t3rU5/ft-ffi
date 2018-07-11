module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-type1_tables.html#PS_PrivateRec
  class PS_PrivateRec < FFIAdditions::Struct
    def unique_id; end
    def unique_id=(v); end
    def lenIV; end
    def lenIV=(v); end
    def num_blue_values; end
    def num_blue_values=(v); end
    def num_other_blues; end
    def num_other_blues=(v); end
    def num_family_blues; end
    def num_family_blues=(v); end
    def num_family_other_blues; end
    def num_family_other_blues=(v); end
    def blue_values; end
    def blue_values=(v); end
    def other_blues; end
    def other_blues=(v); end
    def family_blues; end
    def family_blues=(v); end
    def family_other_blues; end
    def family_other_blues=(v); end
    def blue_scale; end
    def blue_scale=(v); end
    def blue_shift; end
    def blue_shift=(v); end
    def blue_fuzz; end
    def blue_fuzz=(v); end
    def standard_width; end
    def standard_width=(v); end
    def standard_height; end
    def standard_height=(v); end
    def num_snap_widths; end
    def num_snap_widths=(v); end
    def num_snap_heights; end
    def num_snap_heights=(v); end
    def force_bold; end
    def force_bold=(v); end
    def round_stem_up; end
    def round_stem_up=(v); end
    def snap_widths; end
    def snap_widths=(v); end
    def snap_heights; end
    def snap_heights=(v); end
    def expansion_factor; end
    def expansion_factor=(v); end
    def language_group; end
    def language_group=(v); end
    def password; end
    def password=(v); end
    def min_feature; end
    def min_feature=(v); end

    layout unique_id:              :FT_Int,
           lenIV:                  :FT_Int,

           num_blue_values:        :FT_Byte,
           num_other_blues:        :FT_Byte,
           num_family_blues:       :FT_Byte,
           num_family_other_blues: :FT_Byte,

           blue_values:            [:FT_Short, 14],
           other_blues:            [:FT_Short, 10],

           family_blues:            [:FT_Short, 14],
           family_other_blues:      [:FT_Short, 10],

           blue_scale:              :FT_Fixed,
           blue_shift:              :FT_Int,
           blue_fuzz:               :FT_Int,

           standard_width:          [:FT_UShort, 1],
           standard_height:         [:FT_UShort, 1],

           num_snap_widths:         :FT_Byte,
           num_snap_heights:        :FT_Byte,
           force_bold:              :FT_Bool,
           round_stem_up:           :FT_Bool,

           snap_widths:             [:FT_Short, 13],
           snap_heights:            [:FT_Short, 13],

           expansion_factor:       :FT_Fixed,

           language_group:         :FT_Long,
           password:               :FT_Long,

           min_feature:            [:FT_Short, 2]
  end
end