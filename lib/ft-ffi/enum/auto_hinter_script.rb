module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-properties.html#FT_AUTOHINTER_SCRIPT_XXX
  AutohinterScript = enum :autohinter_script, [:NONE,   0, :LATIN, 1, :CJK, 2, :INDIC, 3]

  define_prefix(:AUTOHINTER_SCRIPT, AutohinterScript)
end