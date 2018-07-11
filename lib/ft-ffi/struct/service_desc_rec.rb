module FT
  class ServiceDescRec < FFIAdditions::Struct
    def serv_id; end
    def serv_id=(v); end
    def serv_data; end
    def serv_data=(v); end

    layout serv_id:   :string,
           serv_data: :string
  end
end