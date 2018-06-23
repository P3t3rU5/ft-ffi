$LOAD_PATH.unshift File.expand_path('../../ffi-additions/lib', __dir__)

require 'rspec'
require_relative '../lib/ft-ffi'

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
