require 'rspec'
require_relative '../test/test_helper'
require 'ft-ffi'
require 'ft-ffi/function/library'
require 'ft-ffi/function/face'

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