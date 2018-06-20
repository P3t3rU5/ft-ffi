require 'ft-ffi/struct/module_class'
require 'ft-ffi/struct/library_rec'
require 'ft-ffi/struct/memory_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Module
  class ModuleRec < FFIAdditions::Struct
    layout clazz:    Module_Class.ptr,
           library:  LibraryRec.ptr, # LibraryRec
           memory:   MemoryRec.ptr
  end
end