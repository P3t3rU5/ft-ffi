require 'ft-ffi'

module FT
  AutohinterScript = enum :autohinter_script, [
      :NONE,   0,
      :LATIN,  1,
      :CJK,    2,
      :INDIC,  3
  ]

  define_prefix(:AUTOHINTER_SCRIPT, AutohinterScript)
end