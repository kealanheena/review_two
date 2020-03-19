require 'band_pass_filter'

describe 'Band Pass Filter' do
  describe '#filter' do
    it 'should return an array' do
      band_pass_filter = BandPassFilter.new()
      expect(band_pass_filter.filter).to eq []
    end
  end
end
