require_relative 'test_helper'

require 'ffi'
require_relative '../lib/ft-ffi/function/library'
require_relative '../lib/ft-ffi/function/face'

lib_pointer = FFI::MemoryPointer.new(:pointer)
FT.Init_FreeType(lib_pointer)
library = FT::LibraryRec.new(lib_pointer.read_pointer)

filepathname = "arial.ttf"
full_path = "C:\\Windows\\Fonts\\#{filepathname}"

face_pointer = FFI::MemoryPointer.new(:pointer)
FT.New_Face(library, full_path, 0, face_pointer)
face = FT::FaceRec.new(face_pointer.read_pointer)

width = 0
height = 22
hdpi = vdpi = 96

FT.Set_Char_Size(face, (width * 64).to_i, (height * 64).to_i, hdpi, vdpi)
glyph_index = FT.Get_Char_Index(face, 32)
FT.Load_Glyph(face, glyph_index, :NO_BITMAP)
m = face.glyph_slot.metrics

FT.Done_Face(face)
