require 'ft-ffi'

module FT
  RenderMode = enum :render_mode, [:NORMAL, 0, :LIGHT, :MONO, :LCD, :LCD_V, :MODE_MAX]

  define_prefix(:RENDER_MODE, RenderMode)
end