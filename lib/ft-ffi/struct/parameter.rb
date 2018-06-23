require_relative 'data'

module FT

  # TODO define FT_PARAM_TAG_INCREMENTAL  FT_MAKE_TAG( 'i', 'n', 'c', 'r' )

  # https://www.freetype.org/freetype2/docs/reference/ft2-base_interface.html#FT_Parameter
  class Parameter < FFIAdditions::Struct
    layout tag:  :FT_ULong,
           data: Data
  end
end