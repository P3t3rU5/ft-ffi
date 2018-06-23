require_relative 'cid_face_dict_rec'
require_relative 'font_info_rec'
require_relative '../image/bbox'

module FT
  class CID_FaceInfoRec < FFIAdditions::Struct
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