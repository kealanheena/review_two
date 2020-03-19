class BandPassFilter

  def initialize
    @filtered = []
  end

  def filter(frequencies, low_limit, high_limit)
    frequencies.each { |freq| 
      freq < low_limit ? 
      @filtered << low_limit :(freq > high_limit ? @filtered << high_limit : @filtered << freq)
    }
    @filtered
  end
end
