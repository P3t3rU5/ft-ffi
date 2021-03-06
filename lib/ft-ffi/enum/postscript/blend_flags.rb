module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-type1_tables.html#T1_Blend_Flags
  BlendFlags = enum :blend_flags, [
      :UNDERLINE_POSITION, 0,
      :UNDERLINE_THICKNESS,
      :ITALIC_ANGLE,

      :BLUE_VALUES,
      :OTHER_BLUES,
      :STANDARD_WIDTH,
      :STANDARD_HEIGHT,
      :STEM_SNAP_WIDTHS,
      :STEM_SNAP_HEIGHTS,
      :BLUE_SCALE,
      :BLUE_SHIFT,
      :FAMILY_BLUES,
      :FAMILY_OTHER_BLUES,
      :MAX,
      :FORCE_BOLD, 13,
  ]

  define_prefix(:T1_BLEND, BlendFlags)
end