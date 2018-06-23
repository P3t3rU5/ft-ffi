require_relative '../struct/stream/rec'
require_relative '../struct/memory_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-gzip.html

  # https://www.freetype.org/freetype2/docs/reference/ft2-gzip.html#FT_Stream_OpenGzip
  # FT_Error FT_Stream_OpenGzip( FT_Stream  stream, FT_Stream  source );
  ft_function 'Stream_OpenGzip', StreamRec.ptr(:in), StreamRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-gzip.html#FT_Gzip_Uncompress
  # FT_Error FT_Gzip_Uncompress(
    # FT_Memory       memory,
    # FT_Byte*        output,
    # FT_ULong*       output_len,
    # const FT_Byte*  input,Raster_Funcs
    # FT_ULong        input_len );
  ft_function 'Gzip_Uncompress', MemoryRec.ptr(:in), :pointer, :pointer, :pointer, :FT_ULong

  # https://www.freetype.org/freetype2/docs/reference/ft2-bzip2.html#FT_Stream_OpenBzip2
  # FT_Error FT_Stream_OpenBzip2( FT_Stream  stream, FT_Stream  source );
  # ft_function 'Stream_OpenBzip2', StreamRec.ptr(:in), StreamRec.ptr(:in)
end