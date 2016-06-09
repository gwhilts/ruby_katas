class Clock
  attr_accessor :about

  HOURS = %w{ one two three four five six seven eight nine ten eleven twelve }
  INTERVALS = [ 'five past', 'ten past', 'quarter past', 'twenty past', 'twenty five past', 'half past', 'twenty five to', 'twenty to', 'quarter to', 'ten to', 'five to' ]

  def self.say(hr, min)
    about = min.remainder(5) == 0 ? '' : 'about '

    hr, interval = nearest_five(hr, min)

    if (interval > 6)
      hr += 1
    end
    
    if hr > 12; hr = hr - 12; end

    time = "#{HOURS[hr-1]}"

    case interval
    when 0
      time << " o'clock"
    when 1..11
      time = "#{INTERVALS[interval-1]} #{time}"
    end

    return "It's #{about}#{ time }."
  end

  private 
  
  def self.nearest_five(hr, min) 
    if min > 57; hr += 1; min = 0; end
    interval = (min + 2)/5
    [hr, interval]
  end

end
