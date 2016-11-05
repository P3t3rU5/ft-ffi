require 'ft-ffi/struct/memory_rec'

module FT
  unless FT::CONFIG_OPTION[:NO_DEFAULT_SYSTEM]
    # void FT_Done_Memory( FT_Memory  memory );
    attach_function 'Done_Memory', 'FT_Done_Memory', [MemoryRec.ptr(:in)], :void
  end

  # FT_Memory FT_New_Memory( void );
  attach_function 'New_Memory', 'FT_New_Memory', [], :pointer

  # FT_Pointer ft_mem_alloc(
  #   FT_Memory  memory,
  #   FT_Long    size,
  #   FT_Error  *p_error );
  attach_function 'mem_alloc', 'ft_mem_alloc', [MemoryRec.ptr, :FT_Long, :pointer], :FT_Pointer

  # FT_Pointer ft_mem_dup( FT_Memory memory, const void*  address, FT_ULong size, FT_Error *p_error );
  attach_function 'mem_dup', 'ft_mem_dup', [MemoryRec.ptr, :pointer, :FT_ULong, :pointer], :FT_Pointer

  # void ft_mem_free( FT_Memory memory, const void*  P );
  attach_function 'mem_free', 'ft_mem_free', [MemoryRec.ptr, :pointer], :void

  # FT_Pointer ft_mem_qalloc(
  #   FT_Memory  memory,
  #   FT_Long    size,
  #   FT_Error  *p_error );
  attach_function 'mem_qalloc', 'ft_mem_qalloc', [MemoryRec.ptr, :FT_Long, :pointer], :FT_Pointer

  # FT_Pointer ft_mem_qrealloc(
  #   FT_Memory  memory,
  #   FT_Long    item_size,
  #   FT_Long    cur_count,
  #   FT_Long    new_count,
  #   void*      block,
  #   FT_Error  *p_error );
  attach_function 'mem_qrealloc', 'ft_mem_qrealloc',
                  [MemoryRec.ptr, :FT_Long, :FT_Long, :FT_Long, :pointer, :pointer], :FT_Pointer

  # FT_Pointer ft_mem_realloc(
  #   FT_Memory  memory,
  #   FT_Long    item_size,
  #   FT_Long    cur_count,
  #   FT_Long    new_count,
  #   void*      block,
  #   FT_Error  *p_error );
  attach_function 'mem_realloc', 'ft_mem_realloc',
                  [MemoryRec.ptr, :FT_Long, :FT_Long, :FT_Long, :pointer, :pointer], :FT_Pointer

  # FT_Int ft_mem_strcpyn( char* dst, const char*  src, FT_ULong size );
  attach_function 'mem_strcpyn', 'ft_mem_strcpyn', [:string, :pointer, :FT_ULong], :FT_Int

  # FT_Pointer ft_mem_strdup( FT_Memory memory, const char* str, FT_Error *p_error );
  attach_function 'mem_strdup', 'ft_mem_strdup', [MemoryRec.ptr, :pointer, :pointer], :FT_Pointer
end