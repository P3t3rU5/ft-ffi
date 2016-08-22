require 'ft-ffi/struct/stream_rec'
require 'ft-ffi/struct/face_rec'
require 'ft-ffi/struct/parameter'
require 'ft-ffi/struct/size_rec'
require 'ft-ffi/struct/glyph/glyph_slot_rec'
require 'ft-ffi/struct/vector'
require 'ft-ffi/enum/size_request_type'

module FT
  class GlyphSlotRec < FFIAdditions::Struct; end

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
    layout root:                 Module_Class,

           face_object_size:         :FT_Long,
           size_object_size:         :FT_Long,
           slot_object_size:         :FT_Long,

           init_face:           Face_InitFunc,
           done_face:           Face_DoneFunc,

           init_size:           Size_InitFunc,
           done_size:           Size_DoneFunc,

           init_slot:           Slot_InitFunc,
           done_slot:           Slot_DoneFunc,

           load_glyph:          Slot_LoadFunc,

           get_kerning:   Face_GetKerningFunc,
           attach_file:       Face_AttachFunc,
           get_advances: Face_GetAdvancesFunc,

           request_size:     Size_RequestFunc,
           select_size:       Size_SelectFunc
  end
end