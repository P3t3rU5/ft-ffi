require 'ft-ffi/struct/memory_rec'
require 'ft-ffi/struct/module_rec'
require 'ft-ffi/struct/list_rec'
require 'ft-ffi/struct/renderer_rec'
require 'ft-ffi/struct/library_rec'

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