require 'band_pass_filter'

describe 'Band Pass Filter' do

  describe '#low_filter' do
    it 'should take an array of numbers and return an array of numbers' do
      bandPassFilter = BandPassFilter.new()
      expect(bandPassFilter.low_filter([], 80)).to eq []
    end

    it 'should also take a lower limit' do
      bandPassFilter = BandPassFilter.new()
      expect(bandPassFilter.low_filter([], 80)).to eq []
    end

    it 'should replace all numbers lower than the lower limit with the lower limit' do
      bandPassFilter = BandPassFilter.new()
      expect(bandPassFilter.low_filter([90, 70, 60], 80)).to eq [90, 80, 80]
    end
  end

  describe '#higher_filter' do
    it 'should take an array of numbers and return an array of numbers' do
      bandPassFilter = BandPassFilter.new()
      expect(bandPassFilter.higher_filter([], 110)).to eq []
    end

    it 'should replace all numbers lower than the lower limit with the lower limit' do
      bandPassFilter = BandPassFilter.new()
      expect(bandPassFilter.higher_filter([80, 120, 150, 90], 110)).to eq [80, 110, 110, 90]
    end
  end
end