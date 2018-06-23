module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-properties.html#TT_INTERPRETER_VERSION_XXX
  Interpreter = enum :interpreter, [:VERSION_35, 35, :VERSION_38, 38, :VERSION_40, 40]

  define_prefix(:INTERPRETER, Interpreter)
end