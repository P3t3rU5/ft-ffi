require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-type1_tables.html#PS_PrivateRec
  class PS_PrivateRec < FFIAdditions::Struct
    layout unique_id:                 :FT_Int,
           lenIV:                     :FT_Int,

           num_blue_values:          :FT_Byte,
           num_other_blues:          :FT_Byte,
           num_family_blues:         :FT_Byte,
           num_family_other_blues:   :FT_Byte,

           blue_values:       [:FT_Short, 14],
           other_blues:       [:FT_Short, 10],

          family_blues:       [:FT_Short, 14],
          family_other_blues: [:FT_Short, 10],

          blue_scale:               :FT_Fixed,
          blue_shift:                 :FT_Int,
          blue_fuzz:                  :FT_Int,

          standard_width:     [:FT_UShort, 1],
          standard_height:    [:FT_UShort, 1],

          num_snap_widths:           :FT_Byte,
          num_snap_heights:          :FT_Byte,
          force_bold:                :FT_Bool,
          round_stem_up:             :FT_Bool,

          snap_widths:        [:FT_Short, 13],
          snap_heights:       [:FT_Short, 13],

          expansion_factor:         :FT_Fixed,

          language_group:            :FT_Long,
          password:                  :FT_Long,

          min_feature:         [:FT_Short, 2]
  end
end