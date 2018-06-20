require_relative '../struct/list_rec'
require_relative '../struct/list_node_rec'
require_relative '../struct/memory_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-list_processing.html#FT_List_Destructor
  List_Destructor = callback 'List_Destructor', [MemoryRec.ptr, :pointer, :pointer], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-list_processing.html#FT_List_Iterator
  List_Iterator = callback 'List_Iterator', [ListNodeRec.ptr(:in), :pointer], :FT_Error

  # https://www.freetype.org/freetype2/docs/reference/ft2-list_processing.html#FT_List_Add
  # void FT_List_Add( FT_List list, FT_ListNode  node );
  attach_function 'List_Add', 'FT_List_Add', [ListRec.ptr, ListNodeRec.ptr], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-list_processing.html#FT_List_Finalize
  # void FT_List_Finalize(
  #   FT_List             list,
  #   FT_List_Destructor  destroy,
  #   FT_Memory           memory,
  #   void*               user );
  attach_function 'List_Finalize', 'FT_List_Finalize', [ListRec.ptr, List_Destructor, MemoryRec.ptr, :pointer], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-list_processing.html#FT_List_Find
  # FT_ListNode FT_List_Find( FT_List  list, void*    data );
  attach_function 'List_Find', 'FT_List_Find', [ListRec.ptr, :pointer], :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-list_processing.html#FT_List_Insert
  # void FT_List_Insert( FT_List      list, FT_ListNode  node );
  attach_function 'List_Insert', 'FT_List_Insert', [ListRec.ptr, ListNodeRec.ptr], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-list_processing.html#FT_List_Iterate
  # FT_Error FT_List_Iterate( FT_List list, FT_List_Iterator  iterator, void* user );
  ft_function 'List_Iterate', ListRec.ptr, List_Iterator, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-list_processing.html#FT_List_Remove
  # void FT_List_Remove( FT_List      list, FT_ListNode  node );
  attach_function 'List_Remove', 'FT_List_Remove', [ListRec.ptr(:in), ListNodeRec.ptr], :void

  # https://www.freetype.org/freetype2/docs/reference/ft2-list_processing.html#FT_List_Up
  # void FT_List_Up( FT_List list, FT_ListNode  node );
  attach_function 'List_Up', 'FT_List_Up', [ListRec.ptr, ListNodeRec.ptr], :void
end