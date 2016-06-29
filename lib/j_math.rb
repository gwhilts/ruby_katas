require 'prime'

class JMath
  class << self
    def digits(n)
      n.to_s.chars.map { |d| d.to_i }
    end

    def factorial(n)
      return 1 if n == 0
      n.downto(1).inject(:*)
    end

    def power_permutations(range)
      range.to_a.permutation(2).to_a + range.map { |n| [n, n] } 
    end

    def distinct_powers(range)
      ( ( power_permutations range ).map { |b, p| b**p } ).uniq
    end

    def factorial_digit_sum_match
      ( 3..1_854_721 ).select do |n|
        n == ( ( digits n ).map { |d| factorial d } ).inject(:+)
      end
    end

  end
end
