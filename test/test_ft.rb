require_relative 'test_helper'

include FT
library = FT::Library.new #    /* handle to library      */
filepathname = "arial.ttf"
face = library.new_face("C:\\Windows\\Fonts\\#{filepathname}")
size = 12
puts face.library
face.set_char_size(size)