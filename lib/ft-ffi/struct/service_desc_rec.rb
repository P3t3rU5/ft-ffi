require 'ft-ffi'

module FT
  class ServiceDescRec < FFIAdditions::Struct
    layout serv_id:   :string,
           serv_data: :string
  end
end