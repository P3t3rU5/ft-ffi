require_relative '../struct/stream_rec'
require_relative '../struct/frame_field'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-lzw.html#FT_Stream_OpenLZW
  # FT_Error FT_Stream_OpenLZW( FT_Stream stream, FT_Stream source );
  ft_function 'Stream_OpenLZW', StreamRec.ptr(:in), StreamRec.ptr(:in)
end