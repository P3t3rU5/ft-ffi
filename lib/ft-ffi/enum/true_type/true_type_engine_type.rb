module FT
  TrueTypeEngineType = enum :true_type_engine_type, [:NONE, :UNPATENTED, :PATENTED]

  define_prefix(:TRUETYPE_ENGINE_TYPE, TrueTypeEngineType)
end