require 'ft-ffi'

module FT
  # /* typecast an object to an FT_Module */
  #define FT_MODULE( x )          ((FT_Module)( x ))
  #define FT_MODULE_CLASS( x )    FT_MODULE( x )->clazz
  #define FT_MODULE_LIBRARY( x )  FT_MODULE( x )->library
  #define FT_MODULE_MEMORY( x )   FT_MODULE( x )->memory


  #define FT_MODULE_IS_DRIVER( x )  ( FT_MODULE_CLASS( x )->module_flags & FT_MODULE_FONT_DRIVER )

  #define FT_MODULE_IS_RENDERER( x )  ( FT_MODULE_CLASS( x )->module_flags & FT_MODULE_RENDERER )

  #define FT_MODULE_IS_HINTER( x )  ( FT_MODULE_CLASS( x )->module_flags & FT_MODULE_HINTER )

  #define FT_MODULE_IS_STYLER( x )  ( FT_MODULE_CLASS( x )->module_flags & FT_MODULE_STYLER )

  #define FT_DRIVER_IS_SCALABLE( x )  ( FT_MODULE_CLASS( x )->module_flags & FT_MODULE_DRIVER_SCALABLE )

  #define FT_DRIVER_USES_OUTLINES( x )  !( FT_MODULE_CLASS( x )->module_flags & FT_MODULE_DRIVER_NO_OUTLINES )

  #define FT_DRIVER_HAS_HINTER( x )  ( FT_MODULE_CLASS( x )->module_flags & FT_MODULE_DRIVER_HAS_HINTER )

  #define FT_DRIVER_HINTS_LIGHTLY( x )  ( FT_MODULE_CLASS( x )->module_flags & FT_MODULE_DRIVER_HINTS_LIGHTLY )
end