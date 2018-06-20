require_relative 'spec_helper'

RSpec.describe 'Definitions' do
  files = Dir.glob("#{__dir__}/../lib/**/*.rb").shuffle

  files.each { |f| it("should load #{f}") { expect { require f }.to_not raise_error } }
end