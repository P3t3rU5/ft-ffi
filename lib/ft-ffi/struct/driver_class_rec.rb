require_relative 'stream/rec'
require_relative 'face_rec'
require_relative 'parameter'
require_relative 'size/rec'
require_relative 'glyph/slot_rec'
require_relative 'image/vector'
require_relative '../enum/size_request_type'

module FT
  Face_InitFunc = callback 'Face_InitFunc', [StreamRec.ptr, FaceRec.ptr, :FT_Int, :FT_Int, Parameter.ptr], :FT_Error
  Face_DoneFunc = callback 'Face_DoneFunc', [FaceRec.ptr], :void
  Size_InitFunc = callback 'Size_InitFunc', [SizeRec.ptr], :FT_Error
  Size_DoneFunc = callback 'Size_DoneFunc', [SizeRec.ptr], :void
  Slot_InitFunc = callback 'Slot_InitFunc', [GlyphSlotRec.ptr], :FT_Error
  Slot_DoneFunc = callback 'Slot_DoneFunc', [GlyphSlotRec.ptr], :void
  Slot_LoadFunc = callback 'Slot_LoadFunc', [GlyphSlotRec.ptr, SizeRec.ptr, :FT_UInt, :FT_Int32], :FT_Error
  Face_GetKerningFunc = callback 'Face_GetKerningFunc', [FaceRec.ptr, :FT_UInt, :FT_UInt, Vector.ptr], :FT_Error
  Face_AttachFunc = callback 'Face_AttachFunc', [FaceRec.ptr, StreamRec.ptr], :FT_Error
  Face_GetAdvancesFunc = callback 'Face_GetAdvancesFunc', [FaceRec.ptr, :FT_UInt, :FT_UInt, :FT_Int32, :pointer], :FT_Error
  Size_RequestFunc = callback 'Size_RequestFunc', [SizeRec.ptr, SizeRequestType], :FT_Error
  Size_SelectFunc = callback 'Size_SelectFunc', [SizeRec.ptr, :FT_ULong], :FT_Error

  class Driver_ClassRec < FFI::Struct
    def root; end
    def root=(v); end
    def face_object_size; end
    def face_object_size=(v); end
    def size_object_size; end
    def size_object_size=(v); end
    def slot_object_size; end
    def slot_object_size=(v); end
    def init_face; end
    def init_face=(v); end
    def done_face; end
    def done_face=(v); end
    def init_size; end
    def init_size=(v); end
    def done_size; end
    def done_size=(v); end
    def init_slot; end
    def init_slot=(v); end
    def done_slot; end
    def done_slot=(v); end
    def load_glyph; end
    def load_glyph=(v); end
    def get_kerning; end
    def get_kerning=(v); end
    def attach_file; end
    def attach_file=(v); end
    def get_advances; end
    def get_advances=(v); end
    def request_size; end
    def request_size=(v); end
    def select_size; end
    def select_size=(v); end

    layout root:             Module_Class,

           face_object_size: :FT_Long,
           size_object_size: :FT_Long,
           slot_object_size: :FT_Long,

           init_face:         Face_InitFunc,
           done_face:         Face_DoneFunc,

           init_size:         Size_InitFunc,
           done_size:         Size_DoneFunc,

           init_slot:         Slot_InitFunc,
           done_slot:         Slot_DoneFunc,

           load_glyph:        Slot_LoadFunc,

           get_kerning:       Face_GetKerningFunc,
           attach_file:       Face_AttachFunc,
           get_advances:      Face_GetAdvancesFunc,

           request_size:      Size_RequestFunc,
           select_size:       Size_SelectFunc
  end
end