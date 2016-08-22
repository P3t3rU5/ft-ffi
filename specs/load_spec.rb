require 'rspec'
require_relative '../test/test_helper'
require 'ft-ffi'

RSpec.describe 'Definitions' do

  files = Dir.glob("#{__dir__}/../lib/**/*.rb").shuffle

  files.each { |f| it("should load #{f}") { expect { require f }.to_not raise_error } }

end