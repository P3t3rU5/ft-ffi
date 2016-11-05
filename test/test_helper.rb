$LOAD_PATH.unshift File.expand_path('../..//ft-ffi/lib', __dir__)

def create_library
  lib_pointer = FFI::MemoryPointer.new(:pointer)
  FT.Init_FreeType(lib_pointer)
  LibraryRec.new(lib_pointer.read_pointer)
end

def create_face(filepathname, face_index = 0)
  face = FaceRec.new
  FT.New_Face(create_library, filepathname, face_index, face)
  face
end