require 'ft-ffi'

module FT
  DictKeys = enum :dict_keys, [
      :FONT_TYPE,
      :FONT_MATRIX,
      :FONT_BBOX,
      :PAINT_TYPE,
      :FONT_NAME,
      :UNIQUE_ID,
      :NUM_CHAR_STRINGS,
      :CHAR_STRING_KEY,
      :CHAR_STRING,
      :ENCODING_TYPE,
      :ENCODING_ENTRY,

      :NUM_SUBRS,
      :SUBR,
      :STD_HW,
      :STD_VW,
      :NUM_BLUE_VALUES,
      :BLUE_VALUE,
      :BLUE_FUZZ,
      :NUM_OTHER_BLUES,
      :OTHER_BLUE,
      :NUM_FAMILY_BLUES,
      :FAMILY_BLUE,
      :NUM_FAMILY_OTHER_BLUES,
      :FAMILY_OTHER_BLUE,
      :BLUE_SCALE,
      :BLUE_SHIFT,
      :NUM_STEM_SNAP_H,
      :STEM_SNAP_H,
      :NUM_STEM_SNAP_V,
      :STEM_SNAP_V,
      :FORCE_BOLD,
      :RND_STEM_UP,
      :MIN_FEATURE,
      :LEN_IV,
      :PASSWORD,
      :LANGUAGE_GROUP,

      :VERSION,
      :NOTICE,
      :FULL_NAME,
      :FAMILY_NAME,
      :WEIGHT,
      :IS_FIXED_PITCH,
      :UNDERLINE_POSITION,
      :UNDERLINE_THICKNESS,
      :FS_TYPE,
      :ITALIC_ANGLE,
  ]

  PS_DICT_MAX = DictKeys[:ITALIC_ANGLE]

  # define_prefix(:PS_DICT, DictKeys)
end