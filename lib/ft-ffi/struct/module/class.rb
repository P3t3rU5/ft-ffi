require_relative '../../enum/module_bit_flag'
require_relative 'rec'

module FT
  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Module_Constructor
  Module_Constructor = callback 'Module_Constructor', [ModuleRec.ptr(:in)], :FT_Error
  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Module_Destructor
  Module_Destructor = callback 'Module_Destructor', [ModuleRec.ptr(:in)], :void
  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Module_Requester
  Module_Requester = callback 'Module_Requester', [ModuleRec.ptr(:in), :string], :pointer

  # https://www.freetype.org/freetype2/docs/reference/ft2-module_management.html#FT_Module_Class
  class Module_Class < FFIAdditions::Struct
    def module_flags; end
    def module_flags=(v); end
    def module_size; end
    def module_size=(v); end
    def module_name; end
    def module_name=(v); end
    def module_version; end
    def module_version=(v); end
    def module_requires; end
    def module_requires=(v); end
    def module_interface; end
    def module_interface=(v); end
    def module_init; end
    def module_init=(v); end
    def module_done; end
    def module_done=(v); end
    def get_interface; end
    def get_interface=(v); end

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