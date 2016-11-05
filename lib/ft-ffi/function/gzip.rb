require 'ft-ffi'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-gzip.html

  # https://www.freetype.org/freetype2/docs/reference/ft2-gzip.html#FT_Stream_OpenGzip
  # FT_Error FT_Stream_OpenGzip( FT_Stream  stream, FT_Stream  source );
  ft_function 'Stream_OpenGzip', StreamRec.ptr, StreamRec.ptr

  # https://www.freetype.org/freetype2/docs/reference/ft2-gzip.html#FT_Gzip_Uncompress
  # FT_Error FT_Gzip_Uncompress(
    # FT_Memory       memory,
    # FT_Byte*        output,
    # FT_ULong*       output_len,
    # const FT_Byte*  input,
    # FT_ULong        input_len );
  ft_function 'Gzip_Uncompress', MemoryRec.ptr(:in), :pointer, :pointer

  # FT_Error FT_Stream_OpenBzip2( FT_Stream  stream, FT_Stream  source );
end