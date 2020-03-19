require 'band_pass_filter'

describe 'Band Pass Filter' do
  describe '#filter' do
    it 'should return an array' do
      band_pass_filter = BandPassFilter.new()
      expect(band_pass_filter.filter([], 10, 70)).to eq []
    end

    context 'if no numbers are below the low limit and above the high limit' do
      it 'should return the same array' do
        band_pass_filter = BandPassFilter.new()
        expect(band_pass_filter.filter([50], 10, 70)).to eq [50]
      end
    end

    it 'should can a number to the low limit if it is below the low limit' do
      band_pass_filter = BandPassFilter.new()
      expect(band_pass_filter.filter([5], 10, 70)).to eq [10]
    end
  end
end
