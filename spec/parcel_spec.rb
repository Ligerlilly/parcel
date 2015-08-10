require 'rspec'
require './lib/parcel'

describe Parcel do
  before do
    @test_parcel = Parcel.new(2, 2, 2, 10)
  end

  describe '#volume' do
    it 'returns volume as a product of the 3 dimensions' do
      expect(@test_parcel.volume).to eq 8
    end
  end

  describe '#cost_to_ship' do
    it 'calculates cost to ship based weight' do
      expect(@test_parcel.cost_to_ship(100)).to eq 50
    end

    it 'calculates cost to ship based weight and distance' do
      expect(@test_parcel.cost_to_ship(300)).to eq 70
    end


  end

  describe '#cost_to_wrap' do
    it 'calculates cost to ship if gift wrapped' do
      expect(@test_parcel.cost_to_wrap).to eq(20)
    end
    it 'calculates cost based on surface area' do
      expect(Parcel.new(1, 1, 1, 2).cost_to_wrap).to eq(10)
    end
  end
end
