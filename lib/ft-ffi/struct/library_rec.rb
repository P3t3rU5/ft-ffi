require_relative 'memory_rec'
require_relative 'module_rec'
require_relative 'list_rec'
require_relative 'renderer_rec'

module FT

  MAX_MODULES = 32

  DebugHook_Func = callback 'DebugHook_Func', [LibraryRec.ptr], :void

  class LibraryRec < FFIAdditions::Struct
    layout memory:                 MemoryRec.ptr,

           version_major:                :FT_Int,
           version_minor:                :FT_Int,
           version_patch:                :FT_Int,

           num_modules:                 :FT_UInt,
           modules: [ModuleRec.ptr, MAX_MODULES],

           renderers:                    ListRec,
           cur_renderer:         RendererRec.ptr,
           auto_hinter:            ModuleRec.ptr,

           raster_pool:                 :pointer,
           raster_pool_size:           :FT_ULong,

           debug_hooks:      [DebugHook_Func, 4],

           refcount:                     :FT_Int
  end
end