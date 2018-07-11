require_relative 'memory_rec'
require_relative 'module/rec'
require_relative 'list/rec'
require_relative 'renderer/rec'

module FT
  DebugHook_Func = callback 'DebugHook_Func', [LibraryRec.ptr], :void

  class LibraryRec < FFIAdditions::Struct
    def memory; end
    def memory=(v); end
    def version_major; end
    def version_major=(v); end
    def version_minor; end
    def version_minor=(v); end
    def version_patch; end
    def version_patch=(v); end
    def num_modules; end
    def num_modules=(v); end
    def modules; end
    def modules=(v); end
    def renderers; end
    def renderers=(v); end
    def cur_renderer; end
    def cur_renderer=(v); end
    def auto_hinter; end
    def auto_hinter=(v); end
    def raster_pool; end
    def raster_pool=(v); end
    def raster_pool_size; end
    def raster_pool_size=(v); end
    def debug_hooks; end
    def debug_hooks=(v); end
    def refcount; end
    def refcount=(v); end

    layout memory:           MemoryRec.ptr,

           version_major:    :FT_Int,
           version_minor:    :FT_Int,
           version_patch:    :FT_Int,

           num_modules:      :FT_UInt,
           modules:          [ModuleRec.ptr, MAX_MODULES],

           renderers:        ListRec,
           cur_renderer:     RendererRec.ptr,
           auto_hinter:      ModuleRec.ptr,

           raster_pool:      :pointer,
           raster_pool_size: :FT_ULong,

           debug_hooks:      [DebugHook_Func, 4],

           refcount:         :FT_Int
  end
end