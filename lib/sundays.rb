require 'date'

class Sundays
  class << self
    def firsts_of_months_between(start, finish)
      count = 0
      d = next_sunday Date.parse(start)

      until d >= Date.parse(finish)
        count += 1 if d.day == 1
        d += 7
      end

      count
    end

    def next_sunday(d)
      until d.sunday?
        d += 1
      end
      d
    end
  end
end
