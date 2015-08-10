require 'rspec'
require './lib/parcel'

describe Parcel do
  describe '#volume' do
    it 'returns volume as a product of the 3 dimensions' do
      test_parcel = Parcel.new(2, 2, 2, 10)
      expect(test_parcel.volume).to eq 8
    end
  end
end
