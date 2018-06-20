module FT
  class Incremental_MetricsRec < FFIAdditions::Struct
    layout bearing_x: :FT_Long,
           bearing_y: :FT_Long,
           advance:   :FT_Long,
           advance_v: :FT_Long
  end
end