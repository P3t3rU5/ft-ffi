require 'ft-ffi/struct/library_rec'
require 'ft-ffi/struct/stream_rec'


module FT
  # FT_Error FT_Raccess_Get_DataOffsets(
  #   FT_Library  library,
  #   FT_Stream   stream,
  #   FT_Long     map_offset,
  #   FT_Long     rdata_pos,
  #   FT_Long     tag,
  #   FT_Bool     sort_by_res_id,
  #   FT_Long   **offsets,
  #   FT_Long    *count );
  ft_function 'Raccess_Get_DataOffsets',
              LibraryRec.ptr(:in), StreamRec.ptr(:in), :FT_Long, :FT_Long, :FT_Long, :FT_Bool, :pointer, :pointer

  # FT_Error FT_Raccess_Get_HeaderInfo(
  #   FT_Library  library,
  #   FT_Stream   stream,
  #   FT_Long     rfork_offset,
  #   FT_Long    *map_offset,
  #   FT_Long    *rdata_pos );
  ft_function 'Raccess_Get_HeaderInfo', LibraryRec.ptr(:in), StreamRec.ptr(:in), :FT_Long, :pointer, :pointer

  # void FT_Raccess_Guess(
  #   FT_Library  library,
  #   FT_Stream   stream,
  #   char*       base_name,
  #   char**      new_names,
  #   FT_Long*    offsets,
  #   FT_Error*   errors );
  attach_function 'Raccess_Guess', 'FT_Raccess_Guess',
                  [LibraryRec.ptr(:in), StreamRec.ptr(:in), :string, :pointer, :pointer, :pointer], :void
end