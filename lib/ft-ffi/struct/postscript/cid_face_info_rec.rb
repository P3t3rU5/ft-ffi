require_relative 'cid_face_dict_rec'
require_relative 'font_info_rec'
require_relative '../image/bbox'

module FT
  class CID_FaceInfoRec < FFIAdditions::Struct
    def cid_font_name; end
    def cid_font_name=(v); end
    def cid_version; end
    def cid_version=(v); end
    def cid_font_type; end
    def cid_font_type=(v); end
    def registry; end
    def registry=(v); end
    def ordering; end
    def ordering=(v); end
    def supplement; end
    def supplement=(v); end
    def font_info; end
    def font_info=(v); end
    def font_bbox; end
    def font_bbox=(v); end
    def uid_base; end
    def uid_base=(v); end
    def num_xuid; end
    def num_xuid=(v); end
    def xuid; end
    def xuid=(v); end
    def cidmap_offset; end
    def cidmap_offset=(v); end
    def fd_bytes; end
    def fd_bytes=(v); end
    def gd_bytes; end
    def gd_bytes=(v); end
    def cid_count; end
    def cid_count=(v); end
    def num_dicts; end
    def num_dicts=(v); end
    def font_dicts; end
    def font_dicts=(v); end
    def data_offset; end
    def data_offset=(v); end

    layout cid_font_name: :string,
           cid_version:   :FT_Fixed,
           cid_font_type: :FT_Int,

           registry:       :string,
           ordering:       :string,
           supplement:     :FT_Int,

           font_info:      PS_FontInfoRec,
           font_bbox:      BBox,
           uid_base:       :FT_ULong,

           num_xuid:       :FT_Int,
           xuid:           [:FT_ULong, 16],

           cidmap_offset:  :FT_ULong,
           fd_bytes:       :FT_Int,
           gd_bytes:       :FT_Int,
           cid_count:      :FT_ULong,

           num_dicts:      :FT_Int,
           font_dicts:     CID_FaceDictRec.ptr,

           data_offset:    :FT_ULong
  end
end