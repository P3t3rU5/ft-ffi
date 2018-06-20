module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-truetype_tables.html#FT_Sfnt_Tag
  SfntTag = enum :sfnt_tag, [
      :HEAD,
      :MAXP,
      :OS2,
      :HHEA,
      :VHEA,
      :POST,
      :PCLT,

      :MAX
  ]

  # define_prefix(:SFNT, SfntTag)
end