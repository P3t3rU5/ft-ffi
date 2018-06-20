require 'ft-ffi/enum/module_bit_flag'
require 'ft-ffi/struct/module_rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Module_Constructor
  Module_Constructor = callback 'Module_Constructor', [ModuleRec], :FT_Error
  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Module_Destructor
  Module_Destructor = callback 'Module_Destructor', [ModuleRec], :void
  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Module_Requester
  Module_Requester = callback 'Module_Requester', [ModuleRec, :string], :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Module_Class
  class Module_Class < FFIAdditions::Struct
    layout  module_flags:     ModuleBitFlag,
            module_size:      :FT_Long,
            module_name:      :string,
            module_version:   :FT_Fixed,
            module_requires:  :FT_Fixed,

            module_interface: :pointer,

            module_init:      Module_Constructor,
            module_done:      Module_Destructor,
            get_interface:    Module_Requester
  end
end