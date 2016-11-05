require 'ft-ffi/struct/module_class'
require 'ft-ffi/enum/glyph_format'
require 'ft-ffi/struct/list_node_rec'

module FT
  typedef :pointer, :FT_Module

  # (*FT_Module_Constructor)( FT_Module  module )
  callback 'Module_Constructor', [ModuleRec], :FT_Error

  # (*FT_Module_Destructor)( FT_Module  module )
  callback 'Module_Destructor', [ModuleRec], :void

  # (*FT_Module_Requester)( FT_Module module, const char* name )
  # callback 'Module_Requester', [:FT_Module, :string], :FT_Module_Interface

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Add_Module
  # FT_Add_Module( FT_Library library, const FT_Module_Class*  clazz )
  ft_function 'Add_Module', LibraryRec.ptr, Module_Class.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Get_Module
  # FT_Get_Module( FT_Library library, const char* module_name )
  attach_function 'Get_Module', 'FT_Get_Module', [LibraryRec.ptr(:in), :string], :FT_Module

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Remove_Module
  # FT_Remove_Module( FT_Library  library, FT_Module module )
  ft_function 'Remove_Module', LibraryRec.ptr, ModuleRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Add_Default_Modules
  # FT_Add_Default_Modules( FT_Library  library )
  ft_function 'Add_Default_Modules', LibraryRec.ptr

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Property_Set
  # FT_Property_Set(
  #   FT_Library        library,
  #   const FT_String*  module_name,
  #   const FT_String*  property_name,
  #   const void*       value )
  ft_function 'Property_Set', LibraryRec.ptr(:in), :string, :string, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Property_Get
  # FT_Property_Get(
  #   FT_Library        library,
  #   const FT_String*  module_name,
  #   const FT_String*  property_name,
  #   void*             value )
  ft_function 'Property_Get', LibraryRec.ptr(:in), :string, :string, :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_New_Library
  # FT_New_Library( FT_Memory memory, FT_Library  *alibrary )
  ft_function 'New_Library', MemoryRec.ptr(:in), LibraryRec.ptr(:out)

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Done_Library
  # FT_Done_Library( FT_Library  library )
  ft_function 'Done_Library', LibraryRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Reference_Library
  # FT_Reference_Library( FT_Library  library )
  ft_function 'Reference_Library', LibraryRec.ptr(:in)


  # FT_Add_Default_Modules( FT_Library  library )
  ft_function 'Add_Default_Modules', LibraryRec.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Get_Renderer
  # FT_EXPORT( FT_Renderer )
  # FT_Get_Renderer( FT_Library       library,
  #                  FT_Glyph_Format  format );
  attach_function 'Get_Renderer', 'FT_Get_Renderer', [LibraryRec.ptr(:in), GlyphFormat], Renderer_Class

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Set_Renderer
  # FT_Set_Renderer( FT_Library     library,
  #                  FT_Renderer    renderer,
  #                  FT_UInt        num_params,
  #                  FT_Parameter*  parameters );
  ft_function 'Set_Renderer', LibraryRec.ptr(:in), RendererRec.ptr(:in), :FT_UInt, Parameter.ptr(:in)

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Set_Debug_Hook
  # FT_EXPORT( void )
  # FT_Set_Debug_Hook(
  #   FT_Library         library,
  #   FT_UInt            hook_index,
  #   FT_DebugHook_Func  debug_hook )
  attach_function 'Set_Debug_Hook', 'FT_Set_Debug_Hook', [LibraryRec.by_ref, :FT_UInt, DebugHook_Func], :void

  # Not Documented
  # FT_Renderer FT_Lookup_Renderer(
  #   FT_Library       library,
  #   FT_Glyph_Format  format,
  #   FT_ListNode*     node );
  attach_function 'Lookup_Renderer', 'FT_Lookup_Renderer', [LibraryRec.ptr, GlyphFormat, ListNodeRec.ptr], :pointer

  # FT_Pointer ft_module_get_service( FT_Module module, const char*  service_id );
  attach_function 'module_get_service', 'ft_module_get_service', [ModuleRec.ptr, :pointer], :FT_Pointer

  # const void* FT_Get_Module_Interface( FT_Library   library, const char*  mod_name );
  attach_function 'Get_Module_Interface', 'FT_Get_Module_Interface', [LibraryRec.ptr(:in), :pointer], :pointer
end