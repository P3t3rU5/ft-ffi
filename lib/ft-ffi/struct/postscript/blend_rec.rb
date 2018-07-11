require_relative 'font_info_rec'
require_relative 'private_rec'

module FT
  T1_MAX_MM_AXIS ||= 4
  T1_MAX_MM_DESIGNS = 16
  T1_MAX_MM_MAP_POINTS = 20

  class BlendRec < FFIAdditions::Struct
    def num_designs; end
    def num_designs=(v); end
    def num_axis; end
    def num_axis=(v); end
    def axis_names; end
    def axis_names=(v); end
    def design_pos; end
    def design_pos=(v); end
    def design_map; end
    def design_map=(v); end
    def weight_vector; end
    def weight_vector=(v); end
    def default_weight_vector; end
    def default_weight_vector=(v); end
    def font_infos; end
    def font_infos=(v); end
    def privates; end
    def privates=(v); end
    def blend_bitflags; end
    def blend_bitflags=(v); end
    def bboxes; end
    def bboxes=(v); end
    def default_design_vector; end
    def default_design_vector=(v); end
    def num_default_design_vector; end
    def num_default_design_vector=(v); end

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