class BandPassFilter

  def initialize
    @filtered_arr = []
  end

  def low_filter(arr, lower_limit)
    arr.each { |freq|
      freq < lower_limit ? @filtered_arr.push(lower_limit) : @filtered_arr.push(freq)
    }
    @filtered_arr
  end

  def higher_filter(arr, higher_limit)
    arr.each { |freq|
      freq > higher_limit ? @filtered_arr.push(higher_limit) : @filtered_arr.push(freq)
    }
    @filtered_arr
  end
end