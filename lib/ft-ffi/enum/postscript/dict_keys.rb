module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-type1_tables.html#PS_Dict_Keys
  DictKeys = enum :dict_keys, [
      # conventionally in the font dictionary
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

      # conventionally in the font Private dictionary
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

      # conventionally in the font FontInfo dictionary
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

  define_prefix(:PS_DICT, DictKeys)
end