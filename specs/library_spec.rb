require 'rspec'
require_relative '../test/test_helper'
require 'ft-ffi'
require 'ft-ffi/wrapper/library'

include FT

RSpec.describe Library do

  subject { Library.new }

  describe '::new' do
    it "Shouldn't raise an error" do
      expect { subject }.not_to raise_error
    end
  end

  describe '#new_face' do
    let(:filepathname) { "C:\\Windows\\Fonts\\arial.ttf" }
    it 'should return a new face' do
      expect(subject.new_face(filepathname)).to be_instance_of Face
    end
  end

  describe '#version' do
    it 'should return an array' do
      expect(subject.version).to be_instance_of Array
    end

    it 'should be higher than 0' do
      expect(subject.version.first).to be > 0
    end

    it 'should be a string' do
      expect(subject.version(format: :string)).to be_instance_of String
    end
  end
end