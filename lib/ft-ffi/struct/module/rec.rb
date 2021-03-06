require_relative 'class'
require_relative '../library_rec'
require_relative '../memory_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Module
  class ModuleRec < FFIAdditions::Struct
    def clazz; end
    def clazz=(v); end
    def library; end
    def library=(v); end
    def memory; end
    def memory=(v); end

    layout clazz:    Module_Class.ptr,
           library:  LibraryRec.ptr, # LibraryRec
           memory:   MemoryRec.ptr
  end
end