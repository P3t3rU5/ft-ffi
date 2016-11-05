require 'rspec'
require_relative '../test/test_helper'
require 'ft-ffi'
require 'ft-ffi/function/library'

include FT

RSpec.describe 'Library' do

  subject { create_library }

  describe '#Init_FreeType' do
    it '' do
      lib_pointer = FFI::MemoryPointer.new(:pointer)
      expect(FT.Init_FreeType(lib_pointer)).to be_nil
      expect{ LibraryRec.new(lib_pointer.read_pointer) }.not_to raise_error
    end
  end

  describe LibraryRec do
    describe '#memory' do
      it 'is a MemoryRec' do
        expect(subject.memory).to be_a MemoryRec
      end
    end

    describe '#version_major' do
      it 'is a Integer' do
        expect(subject.version_major).to be_a Integer
      end
    end

    describe '#version_minor' do
      it 'is a Integer' do
        expect(subject.version_minor).to be_a Integer
      end
    end

    describe '#version_patch' do
      it 'is a Integer' do
        expect(subject.version_patch).to be_a Integer
      end
    end

    describe '#num_modules' do
      it 'is a Integer' do
        expect(subject.num_modules).to be_a Integer
      end
    end

    describe '#renderers' do
      it 'is a ListRec' do
        expect(subject.renderers).to be_a ListRec
      end
    end

    describe '#cur_renderer' do
      it 'is a RendererRec' do
        expect(subject.cur_renderer).to be_a RendererRec
      end
    end

    describe '#auto_hinter' do
      it 'is a ModuleRec' do
        expect(subject.auto_hinter).to be_a ModuleRec
      end
    end

    describe '#raster_pool_size' do
      it 'is a Numeric' do
        expect(subject.raster_pool_size).to be_a Numeric
      end
    end

    describe '#refcount' do
      it 'is a Integer' do
        expect(subject.refcount).to be_a Integer
      end
    end
  end

  describe '#Done_FreeType' do
    it '' do
      expect(FT.Done_FreeType(subject)).to be_nil
    end
  end
end