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
      max = divs.max
       ( max..( factorial(max) ) ).step(max) do |n|
        if ( divs.select { |d| n % d == 0 } ).size == divs.size
          return n
        end
        nil
      end
    end

    def power_permutations(range)
      range.to_a.permutation(2).to_a + range.map { |n| [n, n] } 
    end

    def distinct_powers(range)
      ( ( power_permutations range ).map { |b, p| b**p } ).uniq
    end

  end
end
