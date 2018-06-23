require_relative 'font_info_rec'
require_relative 'private_rec'

module FT
  T1_MAX_MM_AXIS ||= 4
  T1_MAX_MM_DESIGNS = 16
  T1_MAX_MM_MAP_POINTS = 20

  class BlendRec < FFIAdditions::Struct
    layout num_designs:               :FT_UInt,
           num_axis:                  :FT_UInt,

           axis_names:                [:string, T1_MAX_MM_AXIS],
           design_pos:                [:string, T1_MAX_MM_DESIGNS],
           design_map:                [:string, T1_MAX_MM_AXIS],

           weight_vector:             :pointer,
           default_weight_vector:     :pointer,

           font_infos:                [PS_FontInfoRec.ptr, T1_MAX_MM_DESIGNS + 1],
           privates:                  [PS_PrivateRec.ptr, T1_MAX_MM_DESIGNS + 1],

           blend_bitflags:            :FT_ULong,

           bboxes:                    :pointer,

           default_design_vector:     [:FT_UInt, T1_MAX_MM_DESIGNS],
           num_default_design_vector: :FT_UInt
  end
end