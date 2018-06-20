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

  end
end