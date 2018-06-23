require_relative '../config'

module FT
  ERR_PREFIX = :Err_
  ERR_BASE = CONFIG_OPTION[:USE_MODULE_ERRORS] ? :Mod_Err_Base : 0

  class << self
    #define FT_ERRORDEF( e, v, s )  e = v,
    # def ERRORDEF( e, v, s )  e = v,

    # define FT_ERRORDEF_( e, v, s ) FT_ERRORDEF( FT_ERR_CAT( FT_ERR_PREFIX, e ), v + FT_ERR_BASE, s )
    # def ERRORDEF_(e, v, s )
    #   FT_ERRORDEF( FT_ERR_CAT(ERR_PREFIX, e), v + FT_ERR_BASE, s )
    # end
    #
    #
    # /* concatenate C tokens */
    #define FT_ERR_XCAT( x, y )  x ## y
    #define FT_ERR_CAT( x, y )   FT_ERR_XCAT( x, y )

    # /* see `ftmoderr.h' for descriptions of the following macros */

    #define FT_ERR( e )  FT_ERR_CAT( FT_ERR_PREFIX, e )

    #define FT_ERROR_BASE( x )    ( (x) & 0xFF )
    #define FT_ERROR_MODULE( x )  ( (x) & 0xFF00U )

    #define FT_ERR_EQ( x, e ) ( FT_ERROR_BASE( x ) == FT_ERROR_BASE( FT_ERR( e ) ) )
    #define FT_ERR_NEQ( x, e ) ( FT_ERROR_BASE( x ) != FT_ERROR_BASE( FT_ERR( e ) ) )


  end
end