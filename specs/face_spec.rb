require 'rspec'
require_relative '../test/test_helper'
require 'ft-ffi/wrapper/library'

include FT

RSpec.describe Face do
  subject do
    Library.new.new_face("C:\\Windows\\Fonts\\arial.ttf")
  end

  describe '#char_index' do
    it 'should be 0 for first char' do

    end
  end


end
