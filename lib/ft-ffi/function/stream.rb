require 'ft-ffi/struct/stream_rec'
require 'ft-ffi/struct/frame_field'

module FT
  # close a stream (does not destroy the stream structure)
  # void FT_Stream_Close( FT_Stream  stream );
  attach_function 'Stream_Close', 'FT_Stream_Close', [StreamRec.ptr], :void

  # Enter a frame of `count' consecutive bytes in a stream.
  # FT_Error FT_Stream_EnterFrame( FT_Stream stream, FT_ULong count );
  ft_function 'Stream_EnterFrame', StreamRec.ptr, :FT_ULong

  # exit a stream frame
  # void FT_Stream_ExitFrame( FT_Stream  stream );
  attach_function 'Stream_ExitFrame', 'FT_Stream_ExitFrame', [StreamRec.ptr], :void

  # Extract a stream frame.
  # FT_Error FT_Stream_ExtractFrame( FT_Stream  stream, FT_ULong   count, FT_Byte**  pbytes );
  ft_function 'Stream_ExtractFrame', StreamRec.ptr, :FT_ULong, :pointer

  # free a stream
  # void FT_Stream_Free( FT_Stream  stream, FT_Int external );
  attach_function 'Stream_Free', 'FT_Stream_Free', [StreamRec.ptr, :FT_Int], :void

  # read a byte from an entered frame
  # FT_Char FT_Stream_GetChar( FT_Stream  stream );
  attach_function 'Stream_GetChar', 'FT_Stream_GetChar', [StreamRec.ptr], :FT_Char

  # read a 32-bit big-endian unsigned integer from an entered frame
  # FT_ULong FT_Stream_GetULong( FT_Stream  stream );
  attach_function 'Stream_GetULong', 'FT_Stream_GetULong', [StreamRec.ptr], :FT_ULong

  # read a 32-bit little-endian unsigned integer from an entered frame
  # FT_ULong FT_Stream_GetULongLE( FT_Stream  stream );
  attach_function 'Stream_GetULongLE', 'FT_Stream_GetULongLE', [StreamRec.ptr], :FT_ULong

  # read a 24-bit big-endian unsigned integer from an entered frame
  # FT_ULong FT_Stream_GetUOffset( FT_Stream  stream );
  attach_function 'Stream_GetUOffset', 'FT_Stream_GetUOffset', [StreamRec.ptr], :FT_ULong

  # read a 16-bit big-endian unsigned integer from an entered frame
  # FT_UShort FT_Stream_GetUShort( FT_Stream  stream );
  attach_function 'Stream_GetUShort', 'FT_Stream_GetUShort', [StreamRec.ptr], :FT_UShort

  # read a 16-bit little-endian unsigned integer from an entered frame
  # FT_UShort FT_Stream_GetUShortLE( FT_Stream  stream );
  attach_function 'Stream_GetUShortLE', 'FT_Stream_GetUShortLE', [StreamRec.ptr], :FT_UShort

  # create a new (input) stream from an FT_Open_Args structure
  # FT_Error FT_Stream_New(
  #   FT_Library           library,
  #   const FT_Open_Args*  args,
  #   FT_Stream           *astream );
  ft_function 'Stream_New', LibraryRec.ptr, Open_Args.ptr, StreamRec.ptr

  #ifndef FT_CONFIG_OPTION_NO_DEFAULT_SYSTEM
  # initialize a stream for reading a regular system stream
  # FT_Error FT_Stream_Open( FT_Stream stream, const char*  filepathname );
  ft_function 'Stream_Open', StreamRec.ptr, :string
  #endif /* FT_CONFIG_OPTION_NO_DEFAULT_SYSTEM */

  # https://www.freetype.org/freetype2/docs/reference/ft2-lzw.html#FT_Stream_OpenLZW
  # FT_Error FT_Stream_OpenLZW( FT_Stream stream, FT_Stream source );
  ft_function 'Stream_OpenLZW', StreamRec.ptr(:in), StreamRec.ptr(:in)

  # initialize a stream for reading in-memory data
  # void FT_Stream_OpenMemory( FT_Stream stream, const FT_Byte* base, FT_ULong size );
  attach_function 'Stream_OpenMemory', 'FT_Stream_OpenMemory', [StreamRec.ptr, :pointer, :FT_ULong], :void

  # return current stream position
  # FT_ULong FT_Stream_Pos( FT_Stream  stream );
  attach_function 'Stream_Pos', 'FT_Stream_Pos', [StreamRec.ptr], :FT_ULong

  # read bytes from a stream into a user-allocated buffer, returns an error if not all bytes could be read.
  # FT_Error FT_Stream_Read( FT_Stream  stream, FT_Byte* buffer, FT_ULong count );
  ft_function 'Stream_Read', StreamRec.ptr, :pointer, :FT_ULong

  # read bytes from a stream at a given position
  # FT_Error FT_Stream_ReadAt( FT_Stream stream, FT_ULong pos, FT_Byte* buffer, FT_ULong count );
  ft_function 'Stream_ReadAt', StreamRec.ptr, :FT_ULong, :pointer, :FT_ULong

  # read a byte from a stream
  # FT_Char FT_Stream_ReadChar( FT_Stream stream, FT_Error* error );
  attach_function 'Stream_ReadChar', 'FT_Stream_ReadChar', [StreamRec.ptr, :pointer], :FT_Char

  # Read a structure from a stream.  The structure must be described by an array of FT_Frame_Field records.
  # FT_Error FT_Stream_ReadFields( FT_Stream stream, const FT_Frame_Field* fields, void* structure );
  ft_function 'Stream_ReadFields', StreamRec.ptr, Frame_Field.ptr, :pointer

  # read a 32-bit big-endian integer from a stream
  # FT_ULong FT_Stream_ReadULong( FT_Stream stream, FT_Error* error );
  attach_function 'Stream_ReadULong', 'FT_Stream_ReadULong', [StreamRec.ptr, :pointer], :FT_ULong

  # read a 32-bit little-endian unsigned integer from a stream
  # FT_ULong FT_Stream_ReadULongLE( FT_Stream stream, FT_Error* error );
  attach_function 'Stream_ReadULongLE', 'FT_Stream_ReadULongLE', [StreamRec.ptr, :pointer], :FT_ULong

  # read a 24-bit big-endian unsigned integer from a stream
  # FT_ULong FT_Stream_ReadUOffset( FT_Stream  stream, FT_Error*  error );
  attach_function 'Stream_ReadUOffset', 'FT_Stream_ReadUOffset', [StreamRec.ptr, :pointer], :FT_ULong

  # read a 16-bit big-endian unsigned integer from a stream
  # FT_UShort FT_Stream_ReadUShort( FT_Stream stream, FT_Error* error );
  attach_function 'Stream_ReadUShort', 'FT_Stream_ReadUShort', [StreamRec.ptr, :pointer], :FT_UShort

  # read a 16-bit little-endian unsigned integer from a stream
  # FT_UShort FT_Stream_ReadUShortLE( FT_Stream stream, FT_Error* error );
  attach_function 'Stream_ReadUShortLE', 'FT_Stream_ReadUShortLE', [StreamRec.ptr, :pointer], :FT_UShort

  # release an extract frame (see FT_Stream_ExtractFrame)
  # void FT_Stream_ReleaseFrame( FT_Stream stream, FT_Byte** pbytes );
  attach_function 'Stream_ReleaseFrame', 'FT_Stream_ReleaseFrame', [StreamRec.ptr, :pointer], :void

  # seek within a stream. position is relative to start of stream
  # FT_Error FT_Stream_Seek( FT_Stream stream, FT_ULong pos );
  ft_function 'Stream_Seek', StreamRec.ptr, :FT_ULong

  # skip bytes in a stream
  # FT_Error FT_Stream_Skip( FT_Stream stream, FT_Long distance );
  ft_function 'Stream_Skip', StreamRec.ptr, :FT_Long

  # try to read bytes at the end of a stream; return number of bytes really available
  # FT_ULong FT_Stream_TryRead( FT_Stream stream, FT_Byte* buffer, FT_ULong count );
  attach_function 'Stream_TryRead', 'FT_Stream_TryRead', [StreamRec.ptr, :pointer, :FT_ULong], :FT_ULong
end