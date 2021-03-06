require_relative 'spec_helper'
require_relative '../lib/ft-ffi/function/library'
require_relative '../lib/ft-ffi/function/face'

include FT

RSpec.describe 'Face' do

  FILEPATHNAME = "C:\\Windows\\Fonts\\arial.ttf"

  subject{ create_face(FILEPATHNAME) }

  describe 'New_Face' do
    it 'creates a new face' do
      face = FaceRec.new
      expect(FT.New_Face(create_library, FILEPATHNAME, 0, face)).to be_nil
      expect(face).to be_a FaceRec
    end
  end

end