require 'prime'

class JMath
  class << self
    def digits(n)
      n.to_s.chars.map { |d| d.to_i }
    end

    def factorial(n)
      n.downto(1).inject(:*)
    end

    def lcm(divs)
      ((divs.max)..factorial(divs.max)).each do |n|
        n += 1
        if ( divs.select { |d| n % d == 0 } ).size == divs.size
          return n
        end
        nil
      end
    end
  end
end
